package gov.acwi.nwqmc.etl.projectMlWeighting;

import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.configuration.annotation.StepScope;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
@StepScope
public class TruncateProjectMlWeighting implements Tasklet {

	private final JdbcTemplate jdbcTemplate;

	@Value("#{jobParameters['datasource']}")
	String datasource;

	@Autowired
	public TruncateProjectMlWeighting(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public RepeatStatus execute(StepContribution contribution,
			ChunkContext chunkContext) throws Exception {
//TODO make dynamic
		jdbcTemplate.execute("truncate table prj_ml_weighting_swap_storet");
		return RepeatStatus.FINISHED;
	}
}
