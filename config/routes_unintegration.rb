Rails.application.routes.draw do
  # 视频组件
  get '/unintegration/video_player', to: 'unintegration#video_player'

  # 饼图
  get '/unintegration/pie_chart', to: 'unintegration#pie_chart'

  # 雷达图
  get '/unintegration/radar_chart', to: 'unintegration#radar_chart'

  # 折线图
  get '/unintegration/trend_chart', to: 'unintegration#trend_chart'

  # 聊天组件
  get '/unintegration/chat_box', to: 'unintegration#chat_box'
  post '/unintegration/return_message', to: 'unintegration#return_message'

  # 评分组件
  get '/unintegration/star_bar', to: 'unintegration#star_bar'
  post '/unintegration/star_bar_post_star_count', to: 'unintegration#star_bar_post_star_count'

  # 学习进度汇总
  get '/unintegration/study_progress', to: 'unintegration#study_progress'

  # 经验对象结构
  get '/unintegration/experience_target_structure_table', to: 'unintegration#experience_target_structure_table'
  get '/unintegration/edit_experience_target_structure',  to: 'unintegration#edit_experience_target_structure'

  # 专家答疑
  get '/unintegration/specialist_answer_question_table', to: 'unintegration#specialist_answer_question_table'
  get '/unintegration/specialist_answer_question',       to: 'unintegration#specialist_answer_question'
end
