package gov.acwi.nwqmc.etl.result;

import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.configuration.annotation.StepScope;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
@StepScope
public class TransformWqxResultTaxonFeedingGroup implements Tasklet {

	private final JdbcTemplate jdbcTemplate;

	@Autowired
	public TransformWqxResultTaxonFeedingGroup(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public RepeatStatus execute(StepContribution contribution, ChunkContext chunkContext) throws Exception {
		jdbcTemplate.execute("insert /*+ append parallel(4) */\n" + 
				"  into wqx_result_taxon_feeding_group (res_uid, feeding_group_list)\n" + 
				"select /*+ parallel(4) */\n" + 
				"       res_uid,\n" + 
				"       listagg(rtfgrp_functional_feeding_grp, ';') within group (order by rownum) feeding_group_list\n" + 
				"  from wqx.result_taxon_feeding_group\n" + 
				"    group by res_uid");
		return RepeatStatus.FINISHED;
	}
}
