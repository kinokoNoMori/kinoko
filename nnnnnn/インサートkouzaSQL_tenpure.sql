
/*--一回のみ-------------------------------------------------------*/
/*WORKS*/
INSERT INTO
`works` (id, uid, work_group_id, title, description, title_movie_id, position, created_at, updated_at, state_id )
VALUES (
'',/*worksテーブルの被ってないid*/
'',/*uid　講座タイトル => ネーミングは過去作に従う(exストラテジ編講座１) => beginner-strategy1*/
'',/*work_group_id => 講座種類ごとに同じ、過去作に従う => ex) python入門=3 , Flask=38*/
'',/*title => READMEの#のところのタイトル => ex) ストラテジ編01: システム戦略と企業活動を把握しておこう*/
 '',/*description => READMEの#のところの記述*/
 '', /*title_movie_id chap01の動画のvimeoの*/
 '1',/*position何講座目か worksテーブルのは1*/
 NOW(),/*created_at*/
 NOW(),/*updated_at*/
 '1'/*state_id*/
 ) ;

/*--各チャプターの分だけコピペ---------------------------------------------------------*/
/*work_problems*/
 INSERT INTO `work_problems`
  (id, uid, no, work_uid, title, description, layout_type, not_login_content, free_content, created_at, updated_at, state_id)
  VALUES
  (
  '', /*id => `work_problems`の空いてるとこ => chap1~最後まで、連番になるように採る*/
  '', /*uid =>　idと同じ値*/
  '', /*no => chap番号*/
  '', /*work_uid =>　work_uidと同じ (exストラテジ編講座１) => beginner-strategy1*/
  '', /*title => 各chapのREADMEの--のとこのタイトル*/
  '', /*description => 各chapのREADMEの--のとこの記述*/
  '1', /*layout_type => 0: 動画 + paiza io, 1: 動画のみ, 10: paiza cloud*/
  '0', /*not_login_content =>*/
  '0', /*free_content =>*/
  NOW(), /*created_at =>*/
  NOW(), /*updated_at =>*/
  '1'/*state_id =>*/
  );

/* work_problem_languages*/
  INSERT INTO `work_problem_languages`
  (
  id,
  work_problem_uid,
  language_id,
  movie_id,
  /*movie_file,--?
  movie_file_expire_at,--?*/
  play_time,
  tips_title_1,
  tips_title_2,
  tips_title_3,
  tips_title_4,
  tips_title_5,
  tips_title_6,
  tips_content_1,
  tips_content_2,
  tips_content_3,
  tips_content_4,
  tips_content_5,
  tips_content_6,
  created_at,
  updated_at
)
  VALUES (
  '',/*id => work_problems`のidと同じ*/
  '',/*work_problem_uid　=> work_problems`のidと同じ*/
  '',/*language_id => https://github.com/gi-no/learning/wiki/language_id*/
  '',/*movie_id vimeoのあれ*/
  '',/*play_time 動画時間*/
  '',/*tips_title_1  READMの#のタイトル　 <= Tipsではないことに注意*/
  '',/*tips_title_2 chapのTipsのタイトル　数に合わせて増減*/
  '',/*tips_title_3*/
  '',/*tips_title_4*/
  '',/*tips_title_5*/
  '',/*tips_title_6*/
  '',/*tips_content_1 READMの#の記述 <= Tipsではないことに注意*/
  '',/*tips_content_2 chapのTipsの内容　数に合わせて増減*/
  '',/*tips_content_3*/
  '',/*tips_content_4*/
  '',/*tips_content_5*/
  '',/*tips_content_6*/
  NOW(),
  NOW()
  );
