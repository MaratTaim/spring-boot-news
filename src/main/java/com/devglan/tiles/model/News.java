package com.devglan.tiles.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "NEWS_BOOT")
public class News {

	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	private Long id;

	@NotNull
	@Size(min = 1, max = 100, message = "{valid.title}")
	@Column(name = "TITLE", nullable = false, length = 100)
	private String title;

	@NotNull
	@Pattern(regexp = "([0-3][0-9]\\/[0-1][0-9]\\/[1-2][0-9][0-9][0-9])", message = "{valid.date}")
	@Column(name = "N_DATE", nullable = false, length = 10)
	private String date;

	@Size(max = 512)
	@Column(name = "BRIEF", nullable = false, length = 512)
	private String brief;

	@Size(max = 1024)
	@Column(name = "CONTENT", nullable = false, length = 1024)
	private String content;

	@Column(name = "DEL")
	private Boolean delete;


}