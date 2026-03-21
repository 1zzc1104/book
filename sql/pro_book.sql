/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : pro_book

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 21/07/2025 19:57:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简介',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活动封面',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活动地点',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '活动详情',
  `status` tinyint DEFAULT NULL COMMENT '状态',
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开始时间',
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='活动管理';

-- ----------------------------
-- Records of activity
-- ----------------------------
BEGIN;
INSERT INTO `activity` (`id`, `name`, `info`, `img`, `address`, `content`, `status`, `start_date`, `end_date`) VALUES (1, '阅读分享会', '在分享会上，参与者可以向其他人介绍自己喜欢读的书籍，分享自己的阅读心得和感悟，同时也可以从别人那里了解更多的书籍和观点。为了使分享会更加有趣，可以设置一些互动环节，例如读者提问和小组讨论等。', 'http://127.0.0.1:9090/web/download/d011f1ad60614a07a4c47ef463c34b93.jpeg', '图书馆3楼A102多功能厅', '<p>活动目的：</p><p>进一步丰富校园文化生活，激发同学们读书的兴趣和热情，让师生一起共享书墨馨香，</p><p>取书中精华，用知识充实、装备自己，在轻松快乐阅读中增长知识，在潜移默化中健康成</p><p>长，以达到素质的真正提高，思想的真正升华。</p><p><br></p><p>活动具体时间：</p><p>10月23日下午2点——5点</p><p>活动地点：</p><p>图书馆3楼A102多功能厅</p><p><br></p><p>活动流程：</p><p>1、提前两天做准备。</p><p>2、分享会时间：每人不超过2分钟。</p><p>3、分享方式：无固定方式（可自己制作 PPT，也可口述</p><p>4、分享内容：</p><p>a、作品介绍（包括作者，写作背景等相关内容）。</p><p>b、心得体会（也可以是一句话或者一段话的体会）。</p><p>c、书籍内容。</p><p>d、简单分享自己的读书方法。</p><p>备注：除了涉及到以上分享内容，如个人有其他要分享的内容也可以加入。</p><p>5、分享之后可以相互交流，给大家推荐自己喜欢的书籍。</p>', 1, '2025-07-21', '2025-07-28');
INSERT INTO `activity` (`id`, `name`, `info`, `img`, `address`, `content`, `status`, `start_date`, `end_date`) VALUES (2, '读后感比赛', '读者展示自己对书籍深度思考和总结能力的活动。在比赛中，参赛者需要写一篇关于自己所读书籍的读后感，并通过评选展示最佳作品。评选标准可以包括文章内容、语言表达和思想深度等方面。同时，可以设置多个奖项，如最佳读后感、最佳语言表达能力奖等。', 'http://127.0.0.1:9090/web/download/157da9fe49b4490488a32e1d3f4dc627.webp', '多媒体室B101', '<p>一、指导思想</p><p>“以书为友，和书作伴，使读书成为一种兴趣，成为一种</p><p>习惯，成为一种生活”是我校创办“书香校园”的宗旨。本着</p><p>“读书育人”的理念，引领广阔老师从书中获取知识，汲取营</p><p>养，养成良好的阅读习惯，营造浓郁的读书气氛。特在学校四</p><p>五年级进展评比活动。</p><p>二、比赛方法及要求</p><p>1、评选的内容不限，形式不限，采取开放的形式，各班</p><p>老师可以给予适当的指导。</p><p>2、评选以年级为单位，由学校进展抽查，投稿的学生必</p><p>须在指定时间上交，由评审小组成员对每篇进展评价。</p><p>3、评审小组成员须在收上的当周对进展评价，评比结果</p><p>于下周公布。</p><p>三、比赛时间</p><p>投稿时间：10月26日——11月28日</p><p>公布时间：11月30日</p>', 1, '2025-07-21', '2025-07-28');
INSERT INTO `activity` (`id`, `name`, `info`, `img`, `address`, `content`, `status`, `start_date`, `end_date`) VALUES (3, '图书“漂流”活动', '图书漂流活动是一种在校园内或社区内举办的图书漂流活动，鼓励读者自由选取书籍，扩大阅读的选择范围的活动。在活动中，读者可以在指定时间内前往漂流书籍的存放地点选取自己喜欢的书籍，并在阅读完毕后将书籍放回原处或传递给下一位读者。为了使活动更加有趣，可以设置多个漂流书籍的存放地点，并鼓励读者记录自己的阅读心得和感悟。', 'http://127.0.0.1:9090/web/download/6101fddcb0f3442ab148825c0e99a0ef.webp', '市图书馆一楼阅览区', '<p>一、活动背景</p><p>随着数字化时代的到来，传统的纸质书籍阅读逐渐被电子书、网络阅读所取代。然而，纸质书籍依然承载着丰富的文化和知识。为鼓励读者分享和传承阅读的乐趣，促进书籍的循环利用，我们决定举办一次“图书漂流”活动。通过这种形式，增进读者之间的交流，营造良好的阅读氛围。</p><p><br></p><p>二、活动目的</p><p>促进资源共享：鼓励读者将闲置的书籍带到活动中，与他人分享。</p><p>提升阅读兴趣：吸引更多读者参与，培养良好的阅读习惯。</p><p>增强社区互动：通过活动加强图书馆与读者之间的联系，增强社区凝聚力。</p><p>三、活动时间和地点</p><p>时间：2024年11月1、2日 14:00 - 17:00</p><p>地点：市图书馆一楼阅览区</p><p>四、活动对象</p><p>本市居民，特别是图书馆会员</p><p>书籍爱好者及各年龄段的读者</p><p>五、活动内容</p><p>1. 图书收集与登记</p><p>在活动开始前，组织志愿者对参与者带来的书籍进行收集和登记。</p><p>每本书籍需填写登记表，包括书名、作者、ISBN、原主人的联系方式等。</p><p>2. 图书展示与漂流</p><p>将收集到的书籍按照主题分类，设置展示区域。</p><p>参与者可以自由选择自己感兴趣的书籍进行“漂流”，即交换或借阅他人带来的书籍。</p><p>3. 读书分享会</p><p>在活动期间，设置一个小型的读书分享环节，鼓励参与者分享自己带来的书籍及其阅读心得。</p><p>邀请一些书评人或读书会成员，分享他们的阅读体验，增加活动的互动性。</p><p>4. 互动游戏</p><p>组织一些与书籍相关的互动游戏，如“书籍知识问答”，增加活动的趣味性和参与度。</p><p>参与者可以通过游戏赢取小礼品，如书签、图书馆纪念品等。</p><p>六、宣传计划</p><p>海报宣传：在图书馆内外张贴活动海报，吸引读者注意。</p><p>社交媒体：通过图书馆的官方微信公众号、微博等平台发布活动信息，鼓励在线报名。</p><p>社区合作：与周边社区、学校合作，宣传活动，扩大参与范围。。</p>', 1, '2025-07-21', '2025-07-28');
INSERT INTO `activity` (`id`, `name`, `info`, `img`, `address`, `content`, `status`, `start_date`, `end_date`) VALUES (4, '故事接龙比赛', '故事接龙比赛是一种让读者接龙创作，展现阅读的影响力和创意想象力的活动。在比赛中，每名参赛者需要从先前读者所写的情节中继续编写故事，并通过评选选出最佳作品。为了使比赛更加有趣，可以设置多个场景和主题，并鼓励读者发挥自己的想象力和创意。', 'http://127.0.0.1:9090/web/download/f37ddd55b45d4c289d22598f6b962884.jpg', '市图书馆二楼多功能厅', '<p>一、活动背景</p><p>在当前快节奏的生活中，传统的故事讲述和分享逐渐被忽视。为了重拾故事的魅力，增强阅读与创作的兴趣，我们决定举办一次“故事接龙比赛”。通过这种互动性强的活动，激发参与者的创造力与想象力，同时增进社区成员之间的交流与合作。</p><p><br></p><p>二、活动目的</p><p>激发创造力：鼓励参与者发挥想象力，创作出有趣的故事。</p><p>促进交流：通过故事接龙的形式，加深参与者之间的互动与了解。</p><p>提升写作能力：提高参与者的语言表达能力和写作技巧。</p><p>三、活动时间和地点</p><p>时间：2024年11月16、17日 （星期六、星期天） 14:00 - 17:00</p><p>地点：市图书馆二楼多功能厅</p><p>四、活动对象</p><p>本市居民，特别是书籍和创作爱好者</p><p>各年龄段的读者与写作爱好者</p><p>五、活动内容</p><p>1. 活动规则介绍</p><p>参与者分成若干小组，每组4-6人。</p><p>比赛开始时，主持人提供一个故事开头，每组在规定时间内接龙，续写故事。</p><p>每组的续写时间为5分钟，内容应紧扣前面的情节，并增添新的元素。</p><p>2. 故事接龙环节</p><p>每组轮流接龙，主持人负责记录故事进展。</p><p>故事结束后，每组将完整的故事分享给全体参与者。</p><p>3. 评选与奖励</p><p>比赛结束后，由评委根据故事的创意、连贯性、幽默感等方面进行打分。</p><p>设置“最佳创意奖”、“最佳团队合作奖”和“观众喜爱奖”等多个奖项。</p><p>向获奖团队颁发奖品，如图书馆会员卡、书籍、文具等。</p><p>4. 交流与分享环节</p><p>比赛结束后，安排一个自由交流的时间，鼓励参与者分享自己的创作心得。</p><p>设立留言板，参与者可以在上面写下对活动的感想与建议。</p><p>六、宣传计划</p><p>海报宣传：在图书馆内外张贴活动海报，吸引读者关注。</p><p>社交媒体：通过图书馆的官方公众号、微博等平台发布活动信息，鼓励在线报名。</p><p>学校合作：与周边学校合作，邀请学生参与，扩大活动影响力。</p>', 1, '2025-07-21', '2025-07-28');
INSERT INTO `activity` (`id`, `name`, `info`, `img`, `address`, `content`, `status`, `start_date`, `end_date`) VALUES (5, '文学知识问答', '文学知识问答是一种设置问答环节，鼓励读者掌握文学知识，更加深入地了解阅读意义的活动。在活动中，主持人可以准备一些文学知识题目，并通过答题环节检验读者的文学素养和知识水平。同时，可以设置多个奖项，鼓励读者积极参与并获得成就感。', 'http://127.0.0.1:9090/web/download/861a31db5eae407792f344119e51a037.png', '市图书馆三楼会议室', '<p>一、活动背景</p><p>文学是人类文明的重要组成部分，它不仅丰富了我们的精神世界，也提升了我们的思维能力和语言表达能力。为了激发读者对文学的热爱，增加文学知识的传播，我们决定举办一次“文学知识问答”活动。通过这种互动形式，不仅可以提高参与者的文学素养，还能增强社区成员之间的交流。</p><p><br></p><p>二、活动目的</p><p>提升文学素养：增加参与者对文学作品、作者及流派的了解。</p><p>激发兴趣：通过趣味问答激发参与者对阅读和写作的兴趣。</p><p>增强互动：促进参与者之间的交流与沟通，营造良好的阅读氛围。</p><p>三、活动时间和地点</p><p>时间：2024年10月26日（星期六、星期天） 14:00 - 16:00</p><p>地点：市图书馆三楼会议室</p><p>四、活动对象</p><p>本市居民，特别是文学爱好者</p><p>各年龄段的读者</p><p>五、活动内容</p><p>1. 活动规则介绍</p><p>参与者分为若干小组，每组3-5人。</p><p>活动分为多个轮次，每轮由主持人提问，参与者在规定时间内回答。</p><p>每道题目分值不同，根据难度设定分数。</p><p>2. 文学知识问答</p><p>题目类型：包括选择题、填空题、简答题等，内容涵盖经典文学作品、作家生平、文学流派等。</p><p>答题时间：每道题目回答时间为30秒，答题后由主持人公布正确答案并进行讲解。</p><p>3. 评比与奖励</p><p>根据各组的得分情况，决定名次。</p><p>设置“最佳团队奖”、“知识达人奖”等多个奖项。</p><p>向获奖团队颁发奖品，如书籍、图书馆会员卡、文具等。</p><p>4. 自由交流环节</p><p>在活动结束后，安排一个自由交流的时间，鼓励参与者分享自己喜欢的文学作品和作家。</p><p>可以设置一个留言板，让参与者写下对活动的感想与建议。</p>', 1, '2025-07-21', '2025-07-28');
COMMIT;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '时间',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简述说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文章管理';

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `info`) VALUES (1, '入 馆 须 知', '2025-07-17 17:33:53', 'http://127.0.0.1:9090/web/download/0652b5756b4248c1bb25f758881184d2.webp', '<p>第一条 校内读者刷脸或扫码（一卡通虚拟二维码）入馆，校外读者凭介绍信或本人有效证件入馆。</p><p><br></p><p>第二条 进入图书馆应举止文明，穿着整齐，着无袖背心、穿拖鞋入馆者不允许入馆。</p><p><br></p><p>第三条 图书馆是重点防火单位，严禁在图书馆内吸烟、动火；严禁携带易燃、易爆物品入馆。违者按《吉林化工学院学生违规处理规定》第十八条进行处分。</p><p><br></p><p>第四条 注意保持室内卫生，不随地吐痰、乱扔杂物等；禁止带有异味食品入馆；禁止将食品、饮料带入阅览室食用。</p><p><br></p><p>第五条 注意保持公共秩序，不大声喧哗、朗读或嬉笑打闹；入馆阅览时，应将手机调至震动档，不准在阅览室内接打手机。</p><p><br></p><p>第六条 爱护书刊资料及一切公共财物，请勿涂抹、撕毁、私藏书刊，不准在墙壁、阅览桌椅、书架等上乱写、乱画、乱刻。</p><p><br></p><p>第七条 读者请自觉使用手机或者机器在座位系统上预约座位，不得以任何方式抢占阅览室座位；不随意挪动阅览室桌椅；离馆时请将个人物品一并带离，不许物品留滞在阅览室；按规定合理使用存包柜。</p><p><br></p><p>第八条 经各出口通道时，配合值班人员核查，不应有不文明礼貌的言行；如遇监测器报警，主动接受工作人员疏散指令。</p><p><br></p><p>第九条 未经许可禁止在馆内张贴或散发广告及其他宣传品。</p><p><br></p><p>第十条 为提高图书馆的整体服务质量，创造良好的学习氛围，希望广大师生能够支持和配合我们的工作；并对我们的工作进行监督，提出批评和建议。</p>', '为提高图书馆的整体服务质量，创造良好的学习氛围，特此制定入馆须知十条');
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `info`) VALUES (2, '图书馆违章处理规定', '2025-07-17 17:33:58', 'http://127.0.0.1:9090/web/download/e24989f60d344f99adf62d22e060df1a.png', '<p>第一条 为了加强图书馆管理，指导读者正确地利用图书馆资源和切实履行义务，规范工作人员在处理违章事务中的行为，特制定本规定。</p><p><br></p><p>第二条 图书馆是重点防火单位，严禁在图书馆内吸烟、动火；严禁携带易燃、易爆物品入馆。违者按第十八条进行处分。</p><p><br></p><p>第三条 凡未办理借阅手续，私自携带书刊离开图书馆者（以检测设备报警并经查实为准），均视为严重违章。具体处理办法如下：当事人须作书面检查；暂停借书权限三个月。情节严重的，将注销当事人的借书权限，通报其所在单位、保卫处和学生工作部，直至通过法律途径解决。</p><p><br></p><p>第四条 书刊遗失，需积极寻找，如无法找到，则赔偿与丢失图书相同版本新书一册，或赔偿其它新书一种三册（赔偿其它新书，单本图书价格不低于所遗失图书、内容得到图书馆认）。</p><p><br></p><p>第五条 遗失成套多卷本图书中的1册或数册，则赔偿与丢失图书相同版本的图书一套或赔偿不同版本，价格不低于原版本的图书一套，赔偿后当事人不得索取其它卷册。</p><p><br></p><p>第六条 书刊出现折角、卷曲或勾画、圈点、批注、涂抹、撕裂但可清除、覆盖、粘和且不影响字体和图像原状的，需进行说服教育，恢复书刊原貌，并积极协助管理员老师整理书刊20分钟。如影响字体和图像，按遗失书刊进行赔偿。</p><p><br></p><p>第七条 书刊出现散页、书脊掰裂、精装封面断裂、被液体浸染、对割页、裁割图书按遗失书刊进行赔偿。</p><p><br></p><p>第八条 使用他人借书证（卡）或将借书证（卡）借给他人使用者，一经发现，对出借及借用的双方均冻结借阅权限30天，并通报其所在院、系给予严肃批评。</p><p><br></p><p>第九条 对以下违章且不服从管理者，将冻结其借阅权限15天，并记录违章一次；再犯者，将冻结其借阅权限30天，并通报其所在单位及其院系：</p><p>（1）通过公共查询检索用机上校园外网或造成检索用机不能正常使用者;</p><p>（2）非规范占阅览室座位，不听劝告者；</p><p>（3）在馆内随地吐痰、乱扔杂物者；</p><p>（4）乱扔图书，不按规定取书和肆意弄乱书架者；</p><p><br></p><p>第十条 读者遗失借书证（卡）后，应及时到图书馆一楼总还书处办理挂失手续并补办新证。挂失前被借出的图书其责任由遗失者承担。</p><p><br></p><p><br></p>', '为了加强图书馆管理，指导读者正确地利用图书馆资源和切实履行义务，规范工作人员在处理违章事务中的行为，特制定本规定');
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `info`) VALUES (3, '自习区使用管理规定', '2025-07-17 17:34:02', 'http://127.0.0.1:9090/web/download/b6323797fe6f4a38baa503e2b8c53369.jpeg', '<p>第一条 读者要爱护自习区的公共设施。不得在桌椅上写字或涂抹乱画，不得损坏桌椅，不得随意调换桌椅。</p><p><br></p><p>第二条 不得以座位预约系统之外的任何方式抢占座位。做到人走桌净，离开座位30分钟以上不归，工作人员有责任将占座物品清理，以免影响他人入座。</p><p><br></p><p>第三条 贵重物品须随身携带，以免丢失。</p><p><br></p><p>第四条 保持自习区安静、整洁。</p>', '自习区使用管理规定');
INSERT INTO `article` (`id`, `name`, `time`, `img`, `content`, `info`) VALUES (4, '读者教育与培训制度', '2025-07-17 17:34:07', 'http://127.0.0.1:9090/web/download/80498192f24a4fa29a2b138a0470c214.webp', '<p>读者教育与培训是图书馆读者服务工作的重要内容，主要有以下几种形式：</p><p><br></p><p>第一条 新生入馆教育。新生入馆教育于每年秋季新生入学后军训过程中举行，入校新生由保卫处或各教学院统一安排、分期分批接受关于图书馆布局、资源分布、图书借阅规程、图书馆服务、书目信息查询方法及规章制度等各方面的教育培训，其目的在于帮助入校新生尽快了解图书馆，并尽快学会使用图书馆，使图书馆成为他们在校学习的第二课堂。</p><p><br></p><p>第二条 文献检索课教学。文献检索课是指导学生利用文献资源，掌握文献检索方法，培养学生独立获取文献信息能力所不可缺少的一项工作。按照学院统一安排。</p><p><br></p><p>第三条 定期讲座等系列培训。针对馆藏电子资源及读者的信息需求，开展多种方式的培训。</p><p><br></p><p>第四条 个性化培训。针对教师读者和学生读者的特殊需求，不定期地开展个性化的培训。</p><p><img src=\"http://127.0.0.1:9090/web/download/30cc205425ba4ae99ba17352d98e84c5.png\" alt=\"\" data-href=\"\" style=\"width: 337.00px;height: 296.56px;\"/></p>', '读者教育与培训是图书馆读者服务工作的重要内容');
COMMIT;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '说明',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `book_id` int DEFAULT NULL COMMENT '关联图书',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='轮播图管理';

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` (`id`, `name`, `img`, `book_id`) VALUES (1, '夏日探险：与书为伴的山间漫步', 'http://127.0.0.1:9090/web/download/42495b4c4e084062b436e7081942d9d7.webp', 1);
INSERT INTO `banner` (`id`, `name`, `img`, `book_id`) VALUES (2, '与多萝西一起探索绿野', 'http://127.0.0.1:9090/web/download/e2db54a5e65d4083a95247444a0eeb66.webp', 2);
INSERT INTO `banner` (`id`, `name`, `img`, `book_id`) VALUES (3, '权力与变革的交汇', 'http://127.0.0.1:9090/web/download/6b947f58d8fa4254944eef7d8deb80e5.webp', 7);
INSERT INTO `banner` (`id`, `name`, `img`, `book_id`) VALUES (4, '见证生命的绽放', 'http://127.0.0.1:9090/web/download/d8e6c199c9714fb0af26a79cacfd187f.jpg', 4);
COMMIT;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  `press` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出版社',
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '国际标准书号',
  `type_id` int DEFAULT NULL COMMENT '所属分类',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简介',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出版日期',
  `status` tinyint DEFAULT NULL COMMENT '图书状态',
  `num` int DEFAULT NULL COMMENT '库存',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '详情描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='图书管理';

-- ----------------------------
-- Records of book
-- ----------------------------
BEGIN;
INSERT INTO `book` (`id`, `name`, `author`, `press`, `isbn`, `type_id`, `img`, `info`, `date`, `status`, `num`, `content`) VALUES (1, '夏日走过山间', '[美]约翰·缪尔 著，刘子超 译', '四川少年儿童出版社', '9787572814044', 1, 'http://127.0.0.1:9090/web/download/069ed68493024ec49255aef30367a783.jpg', '这本书通过生动的文字，传达出对自然的热爱与对生活的深思。', '2024-05-16', 0, 2, '<h4>内容概要</h4><p>本书记录了作者在一个夏日走过山间的经历，描绘了沿途的景色、野花的芬芳、溪水的潺潺以及大自然的声音。通过这些细节，作者探讨了生活的本质与人心的宁静，展现了简单生活中的深刻哲理。</p><h4>主要主题</h4><ul><li><strong>自然之美</strong>: 细致描绘山间的自然风光与生物多样性。</li><li><strong>生活哲学</strong>: 反思人与自然的关系，强调享受当下的美好。</li><li><strong>心灵探索</strong>: 通过自然的体验，引发对内心世界的思考。</li></ul><h4>适读人群</h4><p>本书适合热爱自然、喜欢散文的读者，无论是年轻人还是中年人，都能在书中找到共鸣与启发。</p>');
INSERT INTO `book` (`id`, `name`, `author`, `press`, `isbn`, `type_id`, `img`, `info`, `date`, `status`, `num`, `content`) VALUES (2, '绿野仙踪', '[美]莱曼·弗兰克·鲍姆，童天遥 译', '浙江文艺出版社', '9787533961992', 1, 'http://127.0.0.1:9090/web/download/679769ea8e5242ed8d166fae9316ffd5.png', '通过多萝西与她的新朋友们的旅程，故事探讨了勇气、智慧和爱的主题。', '2020-09-18', 1, 6, '<h4>内容概要</h4><p>故事的主人公多萝西被龙卷风卷到了神奇的奥兹国。在那里，她遇到了稻草人、锡人和胆小狮子，三人一同踏上寻找伟大巫师的旅程，试图实现各自的愿望。通过一路的冒险，他们发现了自己的内心力量与价值。</p><h4>主要主题</h4><ul><li><strong>勇气与智慧</strong>: 强调面对困难时内心力量的重要性。</li><li><strong>友谊与爱</strong>: 展示了友谊的力量在克服挑战中的作用。</li><li><strong>自我发现</strong>: 通过旅程，角色们意识到自身的独特价值。</li></ul><h4>适读人群</h4><p>本书适合儿童及青少年阅读，同时也深受成年人喜爱，是经典的家庭读物，适合各个年龄段的读者。</p>');
INSERT INTO `book` (`id`, `name`, `author`, `press`, `isbn`, `type_id`, `img`, `info`, `date`, `status`, `num`, `content`) VALUES (3, '女仆', '[美]弗雷达·麦克法登', '华龄出版社', '9787516927687', 2, 'http://127.0.0.1:9090/web/download/0d427e608166439f8fd7183abaab106c.jpg', '通过描绘一个女仆的日常生活与内心挣扎，作者揭示了职场中的性别不平等、个人梦想与现实的冲突。', '2024-06-06', 1, 10, '<h4>内容概要</h4><p>本书通过女仆的视角，讲述她在家庭与职场中的经历，探讨了社会对女性的期待与压力。作者以细腻的笔触描绘了女仆与雇主之间的复杂关系，以及她如何在困境中寻找自我价值。</p><h4>主要主题</h4><ul><li><strong>性别角色</strong>: 深入探讨现代社会中女性的多重身份与挑战。</li><li><strong>个人成长</strong>: 记录女仆在职场与生活中的成长与蜕变。</li><li><strong>社会批判</strong>: 反思社会对女性的刻板印象与不平等对待。</li></ul><h4>适读人群</h4><p>本书适合关注性别议题、喜欢社会文学的读者，尤其是对女性角色与身份认同感兴趣的人。</p>');
INSERT INTO `book` (`id`, `name`, `author`, `press`, `isbn`, `type_id`, `img`, `info`, `date`, `status`, `num`, `content`) VALUES (4, '后山开花', '余秀华', '广西师范大学出版社', '9787559848727', 3, 'http://127.0.0.1:9090/web/download/ff11e2173bf343de8ef30fdf97be3837.jpg', '描绘人与自然关系的散文集，作者通过对后山的观察与感悟，展现了自然的美丽与生命的意义。', '2024-04-19', 1, 3, '<h4>内容概要</h4><p>本书通过生动的描写和感人的故事，带领读者走进后山的自然世界，探索生命的奥秘与人与自然的和谐共生。作者记录了山间的每一个细节，从花开的瞬间到风的低语，传达出对生活的热爱与思考。</p><h4>主要主题</h4><ul><li><strong>自然之美</strong>: 描述后山的四季风光与生物多样性。</li><li><strong>生命感悟</strong>: 通过自然现象反思生命的意义与价值。</li><li><strong>人与自然</strong>: 探讨人与自然的关系，呼唤对生态的关注与保护。</li></ul><h4>适读人群</h4><p>本书适合热爱自然、喜欢散文的读者，无论是年轻人还是中年人，都能在书中找到共鸣与启发。</p><p><br></p>');
INSERT INTO `book` (`id`, `name`, `author`, `press`, `isbn`, `type_id`, `img`, `info`, `date`, `status`, `num`, `content`) VALUES (5, '在菜场在人间', '陈慧', '天津人民出版社', '9787201199559', 3, 'http://127.0.0.1:9090/web/download/7a4d8cf98e9640219e595abce9784644.jpg', '书中结合个人故事与社会现象，探讨了人与人之间的关系、生活的琐碎与美好。', '2023-12-22', 1, 3, '<ul><li><strong>书名</strong>: 在菜场在人间</li></ul><h4>内容概要</h4><p>本书通过生动的文字和细腻的描写，带领读者走进菜市场这个人间百态的缩影。作者不仅记录了市场的喧嚣与热闹，还深入探讨了其中的小故事，反映出人们的生活态度与情感世界。</p><h4>主要主题</h4><ul><li><strong>人间烟火</strong>: 描述生活中的琐碎与美好，展现人性的温暖。</li><li><strong>人与人</strong>: 探讨人与人之间的关系与情感纽带。</li><li><strong>生活哲学</strong>: 通过日常生活反思人生的意义与价值。</li></ul><h4>适读人群</h4><p>本书适合喜欢散文、关注社会生活的读者，无论是城市居民还是乡村游客，都能在书中找到共鸣与思考。</p>');
INSERT INTO `book` (`id`, `name`, `author`, `press`, `isbn`, `type_id`, `img`, `info`, `date`, `status`, `num`, `content`) VALUES (6, '敦煌艺术通识课', '杨琪', '中信出版社', '9787521757484', 4, 'http://127.0.0.1:9090/web/download/deb5cbe2479f42b59c17a52233f20b25.jpg', '《敦煌艺术通识课》是一部深入浅出的艺术书籍，旨在介绍敦煌石窟艺术的历史、文化背景及其艺术价值。', '2023-07-01', 1, 4, '<p>本书通过丰富的图文资料，系统地介绍了敦煌艺术的起源、发展及其代表作品。书中详细解析了敦煌艺术的风格特征、技法及其所承载的宗教与文化意义。</p><h4>主要主题</h4><ul><li><strong>敦煌石窟历史</strong>: 概述敦煌石窟的建立与发展历程。</li><li><strong>艺术风格与技法</strong>: 分析敦煌艺术的独特风格与创作技法。</li><li><strong>文化背景</strong>: 探讨敦煌艺术与丝绸之路、宗教信仰的关系。</li></ul><h4>适读人群</h4><p>本书适合对中国古代艺术、宗教文化及敦煌历史感兴趣的读者，无论是艺术专业的学生还是普通读者，都能从中获得丰富的知识与启发。</p>');
INSERT INTO `book` (`id`, `name`, `author`, `press`, `isbn`, `type_id`, `img`, `info`, `date`, `status`, `num`, `content`) VALUES (7, '万历十五年', '黄仁宇', '生活.读书.新知三联书店', '9787108009821', 5, 'http://127.0.0.1:9090/web/download/9343a4d121af4d08a8d017dcbcd0e515.jpg', '万历十五年（公元1587年）的深刻分析，揭示了这一时期中国历史的复杂性与多维度，展现了当时国家的兴衰与民族的命运。', '2006-06-01', 0, 2, '<p>本书以1587年为切入点，详细探讨了明朝的政治体制、士人的角色、经济结构以及社会变迁。作者通过生动的叙述和详实的历史资料，描绘了当时社会的繁荣与暗流，分析了导致明朝衰败的根本原因。</p><h4>主要主题</h4><ul><li><strong>政治与权力</strong>: 深入探讨了明朝的官僚体系与权力斗争。</li><li><strong>经济与社会</strong>: 描述了当时的经济状况与百姓生活。</li><li><strong>文化与思想</strong>: 分析了社会思潮的变迁与士人的影响。</li></ul><h4>适读人群</h4><p>本书适合历史爱好者、学生、研究者以及对中国历史感兴趣的读者，提供了深入的历史视角与思考。</p>');
COMMIT;

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `book_id` int DEFAULT NULL COMMENT '图书id',
  `user_id` int DEFAULT NULL COMMENT '借阅人id',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '借阅日期',
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '预计归还时间',
  `back_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '实际归还时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='借阅管理';

-- ----------------------------
-- Records of borrow
-- ----------------------------
BEGIN;
INSERT INTO `borrow` (`id`, `book_id`, `user_id`, `date`, `end_date`, `back_time`, `status`) VALUES (1, 7, 1, '2025-07-17', '2025-07-26', '2025-07-17 20:16:14', '已归还');
INSERT INTO `borrow` (`id`, `book_id`, `user_id`, `date`, `end_date`, `back_time`, `status`) VALUES (2, 2, 1, '2025-07-18', '2025-07-19', '2025-07-18 14:10:46', '已归还');
INSERT INTO `borrow` (`id`, `book_id`, `user_id`, `date`, `end_date`, `back_time`, `status`) VALUES (3, 2, 1, '2025-07-21', '2025-07-21', '2025-07-21 17:16:14', '已归还');
INSERT INTO `borrow` (`id`, `book_id`, `user_id`, `date`, `end_date`, `back_time`, `status`) VALUES (4, 2, 1, '2025-07-21', '2025-07-22', '2025-07-21 17:16:20', '已归还');
INSERT INTO `borrow` (`id`, `book_id`, `user_id`, `date`, `end_date`, `back_time`, `status`) VALUES (5, 2, 1, '2025-07-21', '2025-07-21', '2025-07-21 19:23:58', '已归还');
INSERT INTO `borrow` (`id`, `book_id`, `user_id`, `date`, `end_date`, `back_time`, `status`) VALUES (6, 2, 1, '2025-07-21', '2025-07-22', '2025-07-21 19:23:58', '已归还');
COMMIT;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `item_id` int DEFAULT NULL COMMENT '收藏id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收藏管理';

-- ----------------------------
-- Records of collect
-- ----------------------------
BEGIN;
INSERT INTO `collect` (`id`, `user_id`, `item_id`) VALUES (1, 1, 3);
INSERT INTO `collect` (`id`, `user_id`, `item_id`) VALUES (5, 1, 6);
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `user_id` int DEFAULT NULL COMMENT '评论人id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论时间',
  `pid` int DEFAULT NULL COMMENT '父id',
  `origin_id` int DEFAULT NULL COMMENT '最上级评论id',
  `item_id` int DEFAULT NULL COMMENT '关联id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='评论管理';

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (7, '可是', 1, '2025-07-17 19:19:39', NULL, NULL, 3);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (8, '1', 1, '2025-07-17 19:24:04', NULL, NULL, 5);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (14, '这本书我借阅过，非常推荐大家来看', 1, '2025-07-21 17:11:39', NULL, NULL, 2);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (15, '如果你有想法，可以找我呢', 1, '2025-07-21 17:11:50', NULL, 14, 2);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (16, '我的微信号是xxx', 1, '2025-07-21 17:12:01', 15, 14, 2);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (17, '推荐推荐', 1, '2025-07-21 17:12:13', NULL, NULL, 2);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (18, '推荐这本书', 1, '2025-07-21 17:23:55', NULL, NULL, 2);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (19, '真的超级推荐', 1, '2025-07-21 17:24:04', NULL, 17, 2);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (20, '真的超级无敌推荐', 1, '2025-07-21 17:24:12', 19, 17, 2);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (21, '456', 1, '2025-07-21 19:19:23', NULL, NULL, 2);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (22, '789', 1, '2025-07-21 19:19:29', NULL, 21, 2);
INSERT INTO `comment` (`id`, `content`, `user_id`, `time`, `pid`, `origin_id`, `item_id`) VALUES (23, '123', 1, '2025-07-21 19:19:32', 22, 21, 2);
COMMIT;

-- ----------------------------
-- Table structure for entry
-- ----------------------------
DROP TABLE IF EXISTS `entry`;
CREATE TABLE `entry` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `item_id` int DEFAULT NULL COMMENT '活动id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参与打卡时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '报名人姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '报名人联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='活动参与管理';

-- ----------------------------
-- Records of entry
-- ----------------------------
BEGIN;
INSERT INTO `entry` (`id`, `item_id`, `user_id`, `time`, `status`, `name`, `phone`) VALUES (1, 2, 1, '2025-07-18 14:12:07', '已参加', '李杰', '17899998888');
INSERT INTO `entry` (`id`, `item_id`, `user_id`, `time`, `status`, `name`, `phone`) VALUES (2, 4, 1, '2025-07-17 20:14:24', '已参加', '测试', '17688889999');
INSERT INTO `entry` (`id`, `item_id`, `user_id`, `time`, `status`, `name`, `phone`) VALUES (3, 3, 1, '2025-07-21 17:18:25', '已参加', '王兰花', '18888888888');
INSERT INTO `entry` (`id`, `item_id`, `user_id`, `time`, `status`, `name`, `phone`) VALUES (4, 3, 1, '2025-07-21 19:26:59', '已参加', '王兰花', '18888888888');
INSERT INTO `entry` (`id`, `item_id`, `user_id`, `time`, `status`, `name`, `phone`) VALUES (5, 3, 1, NULL, '待打卡', '王兰花', '18888888888');
COMMIT;

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员管理';

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
BEGIN;
INSERT INTO `sys_admin` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`) VALUES (1, 'admin', 'admin', '管理员', 'http://127.0.0.1:9090/web/download/fb1ee38bac7b4d489017eca589fea52b.jpg', 'admin@email.com', '18888888888');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户管理';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `avatar_url`, `email`, `phone`) VALUES (1, '111', '111', '用户1', 'http://127.0.0.1:9090/web/download/ec67477e79c0450f92ef8dbd8d657e9f.jpg', 'user@email.com', '18888888888');
COMMIT;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类管理';

-- ----------------------------
-- Records of type
-- ----------------------------
BEGIN;
INSERT INTO `type` (`id`, `name`) VALUES (1, '童书');
INSERT INTO `type` (`id`, `name`) VALUES (2, '小说');
INSERT INTO `type` (`id`, `name`) VALUES (3, '文学');
INSERT INTO `type` (`id`, `name`) VALUES (4, '艺术');
INSERT INTO `type` (`id`, `name`) VALUES (5, '历史');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
