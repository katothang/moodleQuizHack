USE [master]
GO
/****** Object:  Database [getAnswer]    Script Date: 12/21/2020 3:11:41 PM ******/
CREATE DATABASE [getAnswer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'getAnswer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\getAnswer.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'getAnswer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\getAnswer_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [getAnswer] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [getAnswer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [getAnswer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [getAnswer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [getAnswer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [getAnswer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [getAnswer] SET ARITHABORT OFF 
GO
ALTER DATABASE [getAnswer] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [getAnswer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [getAnswer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [getAnswer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [getAnswer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [getAnswer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [getAnswer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [getAnswer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [getAnswer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [getAnswer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [getAnswer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [getAnswer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [getAnswer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [getAnswer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [getAnswer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [getAnswer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [getAnswer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [getAnswer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [getAnswer] SET  MULTI_USER 
GO
ALTER DATABASE [getAnswer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [getAnswer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [getAnswer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [getAnswer] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [getAnswer] SET DELAYED_DURABILITY = DISABLED 
GO
USE [getAnswer]
GO
/****** Object:  Table [dbo].[question]    Script Date: 12/21/2020 3:11:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](max) NULL,
	[answer] [nvarchar](max) NULL,
	[imageQ] [varbinary](max) NULL,
	[imageA] [varbinary](max) NULL,
	[urlQ] [nvarchar](250) NULL,
	[urlA] [nvarchar](250) NULL,
	[name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[question] ON 

INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (325, N'Theo đánh giá chung của Sloan Consortium thì các lớp học có áp dụng công nghệ Internet ở nhóm nào thì được coi là những lớp học E-learning?', N'Nhóm C và nhóm D.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (326, N'Khi nói về các chuẩn và đặc tả cho hệ thống e-learning, có 2 phát biểu như sau:<br> PB1: Các chuẩn và đặc tả là thành phần kết nối tất cả các thành phần của hệ thống e-learning.<br> PB2: Các chuẩn cho phép ghép các khóa học tạo bởi các công cụ khác nhau bởi các nhà sản xuất khác nhau thành các gói nội dung được gọi là các chuẩn metadata.<br> Hỏi khẳng định nào sau đây là đúng?', N'PB1 đúng, PB2 sai.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (327, N'Trong quá trình trao đổi và giải đáp thắc mắc, yếu tố nào sau đây KHÔNG phải là ưu điểm khi sử dụng diễn đàn?', N'Bạn không có được câu trả lời ngay tức khắc.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (328, N'Đâu KHÔNG phải là hệ thống hỗ trợ học tập trong môi trường  elearning?', N'Hệ thống phần mềm quản lý truy cập mạng Internet.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (329, N'LCMS là viết tắt của cụm từ tiếng Anh nào?', N'Learning Content Managerment System.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (330, N'Đâu là đặc điểm của E-Learning?', N'Tiến trình học được theo dõi chặt chẽ và cung cấp công cụ tự đánh giá.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (331, N'Trong mô hình hệ thống E-Learning không bao gồm thành phần nào?', N'Đội ngũ kỹ sư công nghệ thông tin.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (332, N'Để đánh giá kiến thức của sinh viên, các lớp học E-Learning chủ yếu dựa vào loại bài tập nào dưới đây?', N'Bài tập trắc nghiệm trực tuyến.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (333, N'Theo Sloan Consortium thì lớp học áp dụng Internet ở mức nào KHÔNG phải là lớp học E-learning?', N'Nhóm A và nhóm B.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (334, N'Đâu không phải là một trong các yêu cầu giao diện người dùng của một hệ thống LMS điển hình?', N'Không cho phép thiết lập nhiều giao diện riêng biệt cho các nhóm người dùng khác nhau.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (335, N'Mô hình SCORM do tổ chức nào đưa ra?', N'Viện nghiên cứu công nghệ giáo dục từ xa (ADL).', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (336, N'Đối với các lớp học E-Learning, khẳng định nào dưới đây là đúng?', N'Sinh viên có thể làm các bài luyện tập trắc nghiệm không tính điểm bất cứ lúc nào.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (337, N'Khi nói về mô hình chức năng hệ thống, có 2 phát biểu như sau:<br> PB1: Một LCMS là một môi trường đa người dùng.<br> PB2: LCMS cho phép người dùng tạo ra và sử dụng lại những đơn vị nội dung nhỏ trong kho dữ liệu trung tâm.<br> Hỏi khẳng định nào sau đây là đúng?', N'PB1 đúng, PB2 đúng.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (338, N'Theo Sloan Consortium lớp học nào dưới đây là lớp học trực tuyến?', N'Tất cả nội dung trên Internet; không có gặp mặt trực tiếp.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (339, N'Trong số các đặc điểm sau, đâu không phải là đặc điểm của hệ thống E-Learning?', N'Không linh hoạt về khối lượng kiến thức cần tiếp thu.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (340, N'Tìm câu trả lời đúng nhất.  Vì sao con người cần phải tự tin vào bản thân mình?', N'Vì đó là điều kiện cần thiết để con người làm chủ bản thân, chủ động thực hiện những mục tiêu mà mình đã đề ra.', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (341, N'Tìm phương án đúng nhất. Một người được coi là thực sự có khả năng kiểm soát cảm xúc của bản thân khi người đó:', N'Giữ bình tĩnh trước mọi bất ngờ xảy ra', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (342, N'Tìm câu trả lời đúng nhất. Vì sao con người cần phải kiểm soát cảm xúc của bản thân?', N'Vì nếu phản ứng một cách không kiểm soát với những điều xảy ra trái ý mình thì sẽ dễ dẫn đến những hậu quả khó lường', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (343, N'Một người tự tin về khả năng và giá trị về bản thân thì sẽ có những biểu hiện như thế nào?', N'Tư thế ngay ngắn, ung dung, mắt nhìn thẳng', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (344, N'Theo mô hình cửa sổ Johari, để phát triển bản thân thì con người cần chú trọng mở rộng phần nào?', N'Phần công khai/ Open', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (345, N'Theo mô hình cửa sổ Johari, cách thức mà con người tương tác với người khác để hiểu về bản thân mình là gì?', N'Tự bộc lộ và đón nhận thông tin phản hồi', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (346, N'Tìm phương án đúng nhất.  Muốn phát triển được bản thân thì con người cần phải làm gì?', N'Nhận biết năng lực bản thân, đặt ra mục tiêu phù hợp, lập kế hoạch để thực hiện mục tiêu', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (347, N'Theo mô hình cửa sổ Johari, nếu một người sống quá khép kín, ngại giao tiếp thì người đó có thể gặp những điểm bất lợi gì?', N'Thiếu thông tin, bỏ lỡ cơ hội hợp tác, phát triển', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (348, N'Tìm câu trả lời đúng nhất. Vì sao con người cần nhận thức được điểm mạnh và điểm yếu của bản thân mình?', N'Vì con người chỉ có thể tự tin khi biết được điểm mạnh của bản thân để phát triển nó và biết điểm yếu của bản thân để khắc phục nó', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (349, N'Người có độ thông minh cảm xúc cao là người:', N'Hiểu về năng lực bản thân, biết tự kiểm soát cảm xúc, cân bằng các mối quan hệ, nhạy cảm đoán biết được cảm xúc và suy nghĩ của người khác', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (350, N'<p>Luận điểm nào sau đây diễn đạt đúng về khái niệm quản lý bản thân:</p>', N'Quản lý bản thân là việc một cá nhân hiểu biết về chính bản thân mình, kiểm soát được cảm xúc, hành vi của mình và biết cách phát triển những năng lực mà mình có nhằm đạt được những mục tiêu mà bản thân họ đề ra', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (351, N'SMART là công thức được khuyến khích áp dụng để làm gì?', N'Thiết lập mục tiêu hành động', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (352, N'<p>Con người cần làm gì để biến mục tiêu thành hiện thực?</p>', N'Xác định mục tiêu, lên kế hoạch hành động, thực hiện nghiêm túc theo kế hoạch', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (353, N'Mô hình cửa sổ Johari đã chỉ ra lợi ích của việc mở rộng các mối quan hệ giao tiếp, chủ động chia sẻ quan điểm và trao đổi thông tin với người khác. Tuy nhiên, vấn đề chia sẻ thông tin cần được thực hiện như thế nào?', N'Sự chia sẻ thông tin cần phụ thuộc vào độ thông minh cảm xúc của từng người', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (354, N'Theo mô hình cửa sổ Johari, một người muốn khám phá những năng lực của chính bản thân mình thì người đó cần làm gì?', N'Tích cực chủ động tìm kiếm cơ hội để phát triển bản thân', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (355, N'Một người tự tin về bản thân thì sẽ phản ứng như thế nào khi được yêu cầu trình bày quan điểm của mình?', N'Nói ra những quan điểm của mình và sẵn sàng bảo vệ niềm tin về những gì là đúng', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (356, N'Tìm phương án đúng nhất. Một người được coi là biết kiểm soát cảm xúc của bản thân khi người đó:', N'Kiềm chế sự bốc đồng, giữ bình tĩnh khi sự việc bất ngờ xảy ra', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (357, N'Để điều khiển và ngăn chặn cảm xúc tiêu cực thì con người cần tránh điều gì?', N'Trầm trọng hóa vấn đề', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (358, N'Tìm câu trả lời đúng nhất. Vì sao con người cần hiểu biết năng lực của bản thân mình?', N'Vì đó là tiền đề quan trọng để con người xây dựng nhân hiệu, tạo dựng hình ảnh và uy tín cá nhân hướng đến sự thành công trong công việc và cuôc sống', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (359, N'Một người tự ty về bản thân thường có biểu hiện như thế nào?', N'Rụt rè, ngại giao tiếp với người khác', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (360, N'Bước thứ ba trong quy trình giải quyết vấn đề là', N'Lựa chọn giải pháp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (361, N'Phương án nào dưới đây giải thích đúng về cách giải quyết vấn đề theo hệ thống:', N'Giải quyết vấn đề theo hệ thống là một quá trình phân tích logic bao gồm các bước khác nhau nhằm đạt được giải pháp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (362, N'Sau khi đã lựa chọn được giải pháp phù hợp nhất để giải quyết vấn đề thì cần phải làm gì', N'Xây dựng kế hoạch hành động cụ thể để triển khai giải pháp một cách hiệu quả trên thực tế', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (363, N'Khi đối mặt với một vấn đề cần giải quyết, việc đầu tiên bạn phải làm là:', N'Xác định vấn đề', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (364, N'Bước cuối cùng trong quy trình giải quyết vấn đề là:', N'Đánh giá giải pháp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (365, N'Việc đánh giá thực hiện giải pháp cần được tiến hành khi nào', N'Việc đánh giá thực hiện giải pháp cần được tiến hành liên tục cả trong và sau khi hoàn thành quá trình triển khai giải pháp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (366, N'Kỹ thuật “đặt 5 lần câu hỏi tại sao” là nhằm mục đích gì?', N'Xác định nguyên nhân gốc của vấn đề', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (367, N'Bước thứ năm trong quy trình giải quyết vấn đề là:', N'Theo dõi thực hiện giải pháp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (368, N'Để giải quyết vấn đề một cách hiệu quả, người giải quyết vấn đề cần có thái độ như thế nào?', N'Cần tạo dựng thái độ tích cực và lạc quan khi giải quyết vấn đề', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (369, N'<p>Phương án nào dưới đây giải thích đúng nhất về việc lựa chọn phương pháp giải quyết vấn đề khi gặp vấn đề phức tạp, nhiều biến động, khó dự báo?</p>', N'Khi vấn đề phức tạp, nhiều biến động, khó dự báo thì nên kết hợp sử dụng cách giải quyết vấn đề cảm nhận sáng tạo và phân tích logic hệ thống', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (370, N'Kỹ thuật xương cá” là phương pháp dùng để làm gì?', N'Phân tích các nguyên nhân của vấn đề', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (371, N'Tìm phương án trả lời đúng nhất. Để giải quyết vấn đề một cách hiệu quả thì cần xem xét vấn đề đó như thế nào?', N'Xem xét vấn đề từ nhiều góc độ khác nhau', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (372, N'Bước thứ tư trong quy trình giải quyết vấn đề là', N'Thực hiện giải pháp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (373, N'Phương án nào dưới đây giải thích đúng nhất về cách giải quyết vấn đề sáng tạo?', N'Giải quyết vấn đề theo cách sáng tạo là một quá trình không đi theo một trình tự các bước cụ thể mà dưa vào sự cảm nhận, so sánh, mường tượng, xử lý kết hợp các bước để đạt được giải pháp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (374, N'Phương án nào dưới đây giải thích đúng nhất về việc lựa chọn phương pháp giải quyết vấn đề đơn giản, dễ thống nhất và các thông tin có khả năng dự báo trước?', N'Khi gặp vấn đề đơn giản, dễ thống nhất và các thông tin có khả năng dự báo trước thì nên sử dụng cách giải quyết vấn đề theo hệ thống để tìm giải pháp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (375, N'Khi đứng trước nhiều giải pháp cho một vấn đề thì cần làm gì để lựa chọn được giải pháp phù hợp nhất?', N'Ứng dụng kỹ thuật biểu đồ để nhóm các giải pháp; đánh giá các giải pháp bằng quá trình so sánh; tư duy vượt ra ngoài rào cản và cân nhắc hậu quả khi lựa chọn giải pháp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (376, N'Tư duy vượt ra ngoài rào cản (think outside of the box) khi giải quyết vấn đề có nghĩa là', N'Có cách nhìn mới, nhìn vấn đề từ các góc độ khác nhau, đa dạng và phong phú', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (377, N'Bước thứ hai trong quy trình giải quyết vấn đề là', N'Đưa ra các giải pháp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (378, N'“Kỹ thuật Janusian” là phương pháp dùng để làm gì?', N'Xem xét khía cạnh đối diện của vấn đề', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (379, N'“Kỹ thuật ẩn dụ Metaphor” là phương pháp dùng để làm gì?', N'So sánh và đặt vấn đề vào bối cảnh mới', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (380, N'Trong số các nhân tố dưới đây, nhân tố nào có nguy cơ lớn nhất làm cho cuộc họp nhóm thất bại?', N'Các thành viên công kích, dèm pha lẫn nhau', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (381, N'Trong quá trình hoạt động nhóm, đến giai đoạn nào thì các thành viên trong nhóm sẽ bắt đầu nhận thấy những lợi ích của việc cộng tác cùng với nhau và giảm bớt xung đột nội bộ?', N'Giai đoạn chuẩn hóa', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (382, N'Tìm phương án đúng nhất.  Khi các nhóm trong doanh nghiệp đều làm việc có hiệu quả  thì sẽ mang lại điều gì cho doanh nghiệp?', N'Uy tín và giá trị thương hiệu của doanh nghiệp được nâng cao', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (383, N'Xác định một luận điểm đúng trong số các luận điểm dưới đây bàn về vấn đề mâu thuẫn nhóm:', N'Khi hoạt động nhóm, tất yếu sẽ nảy sinh nhiều mâu thuẫn vì nhóm là sự tập hợp của những con người với quan niệm, tính cách, năng lực, kinh nghiệm... khác nhau', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (384, N'Để xây dựng mối quan hệ tốt đẹp giữa các thành viên trong nhóm, người trưởng nhóm không nên làm gì?', N'Đối xử thiếu công bằng với các thành viên trong nhóm', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (385, N'Trong trường hợp nào thì doanh nghiệp chưa cần thành lập nhóm để giải quyết công việc?', N'Khi các cá nhân có thể dễ dàng làm việc độc lập', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (386, N'Trong môi trường học tập, khi nào thì nên thành lập nhóm?', N'Khi thực hiện một bài tập lớn cần có kiến thức tổng hợp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (387, N'Hành động nào dưới đây sẽ làm giảm tác dụng của hoạt động  nhóm trong môi trường học tập?', N'Dựa dẫm, ỷ lại vào thành quả học tập của người khác trong nhóm', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (388, N'Điều gì cần phải được thực hiện trước khi thành lập nhóm?', N'Xác định mục tiêu thành lập nhóm', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (389, N'Thành viên nhóm nên hành xử như thế nào khi nhóm đưa ra một quyết định không trùng hợp với quan điểm của mình?', N'Chấp nhận vì đó là quyết định đã dựa trên những nguyên tắc và giá trị chung đã được thỏa hiệp của nhóm', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (390, N'Ma trận quản lý thời gian được xây dựng dựa trên những đặc tính nào?', N'Tính quan trọng và tính khẩn cấp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (391, N'Một người quản lý thời gian tốt là người có nhiều công việc ở ô nào trong ma trận quản lý thời gian?', N'Ô số 2: công việc quan trọng nhưng không khẩn cấp', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (392, N'Một người được gọi là biết cách quản lý thời gian nếu người đó:', N'Biết phân loại công việc, lập kế hoạch và từng bước thực hiện theo kế hoạch', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (393, N'Khi có công việc quan trọng và khẩn cấp thì con người cần hành động như thế nào?', N'Tập trung mọi nguồn lực để giải quyết ngay lập tức', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (394, N'Quản lý thời gian bằng cách sử dụng lịch công tác sẽ mang lại lợi ích gì?', N'Giúp sắp xếp công việc theo trình tự thời gian và hoạch định công việc trong tương lai gần', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (395, N'Tìm một luận điểm đúng khi nói về đặc điểm của thời gian trong số các phương án sau:', N'Thời gian trôi qua không bao giờ ngừng lại', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (396, N'Hãy chỉ ra một nguyên nhân gây lãng phí thời gian trong số các phương án sau:', N'Sử dụng điện thoại quá nhiều', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (397, N'Yếu tố nào dưới đây là nguyên nhân gây lãng phí thời gian?', N'Làm việc không có kế hoạch', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (398, N'Khi một người phải liên tục làm các công việc quan trọng và khẩn cấp trong một thời gian dài thì sẽ có kết quả công việc như thế nào?', N'Kết quả công việc sẽ không thể tốt do sức chịu đựng sự căng thẳng của con người có giới hạn', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (399, N'Tìm phương án trả lời đúng nhất. Một việc như thế nào thì được coi là khẩn cấp?', N'Một việc được coi là khẩn cấp khi nó đòi hỏi sự chú ý ngay lập tức', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (400, N'Quản lý thời gian bằng cách ghi chép danh sách các công việc cần làm (check list) sẽ mang lại lợi ích gì?', N'Giúp nhớ các đầu mục công việc cần làm', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (401, N'Khi phân loại, sắp xếp công việc vào ma trận quản lý thời gian, bạn sẽ xếp vào ô số 2 công việc nào trong số các công việc sau:', N'Xây dựng mối quan hệ với đối tác', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (402, N'Phương án nào sau đây là không chính xác khi nói về đặc điểm của thời gian:', N'Quỹ thời gian của mỗi người là vô hạn', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (403, N'Khi phân loại, sắp xếp công việc vào ma trận quản lý thời gian, bạn sẽ xếp vào ô số 4 công việc nào trong số các công việc sau:', N'Gọi điện thoại tán gẫu', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (404, N'Khi làm công việc ở ô số 2 trong ma trận quản lý thời gian thì sẽ có lợi thế gì?', N'Có thời gian để chủ động, bình tĩnh, tập trung vào công việc quan trọng', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (405, N'Quản lý thời gian là gì? Tìm phương án không chính xác trong số các phương án sau đây', N'Là sự vội vã hoàn thành công việc vào phút cuối', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (406, N'Tìm phương án đúng nhất. Một việc như thế nào thì được coi là quan trọng?', N'Một việc được coi là quan trọng khi nó có một ý nghĩa lớn hoặc gây ra một kết quả đáng kế', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (407, N'Bạn sẽ sắp xếp vào ô số 3 trong ma trận quản lý thời gian loại công việc nào trong số các công việc dưới đây?', N'Các công việc ngắn hạn, vụn vặt', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (408, N'Trong số các phương án dưới đây, phương án nào giải thích đúng nhất về khái niệm quản lý thời gian?', N'Quản lý thời gian là biết cách sử dụng thời gian một cách hợp lý và hiệu quả để đạt được mục tiêu xác định', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (409, N'Khi một người có nhiều công việc ở ô số 3 trong ma trận quản lý thời gian thì người đó nên làm gì?', N'Ủy quyền cho người khác làm thay nếu có thể', NULL, NULL, NULL, NULL, N'Phát triển Kỹ năng Cá nhân - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (410, N'Khi sử dụng Website của chương trình elearning, sinh viên KHÔNG thể làm gì?', N'Thay đổi tên đăng nhập.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (411, N'Sau khi đăng nhập vào lớp học, thao tác nào sau đây KHÔNG thể thực hiện được?', N'Thay đổi mật khẩu đăng nhập của bạn cùng lớp.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (412, N'Chọn phát biểu SAI?', N'E-learning là một thuật ngữ dùng để mô tả việc học tập không dựa trên công nghệ thông tin và truyền thông.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (413, N'Trong số các đặc điểm sau, đâu không phải là đặc điểm của hệ thống E-Learning?', N'Các dịch vụ đào tạo không được triển khai đồng bộ.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (414, N'Khi nói về quá trình phát triển E-learning, có 2 phát biểu như sau:<br> PB1: Trước năm 1983: phương pháp giáo dục “Lấy giảng viên làm trung tâm” là phương pháp phổ biến nhất trong các trường học.<br> PB2: Giai đoạn 1984-1993: Khi công nghệ Web được phát minh ra, các nhà cung cấp dịch vụ đào tạo bắt đầu nghiên cứu cách thức cải tiến phương pháp giáo dục bằng công nghệ này.<br> Hỏi khẳng định nào sau đây là đúng?', N'PB1 đúng, PB2 sai.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (415, N'Theo Sloan Consortium lớp học nào dưới đây được coi là lớp học sử dụng công nghệ Internet?', N'Lớp học có 1-29% nội dung được truyền tải qua Internet.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (416, N'Khi nói về mô hình chức năng hệ thống, có 2 phát biểu như sau:<br> PB1: LMS là một hệ thống dịch vụ quản lý việc phân phối và tìm kiếm nội dung học tập cho người học.<br> PB2: LMS lấy thông tin về vị trí của khoá học từ LCMS và về các hoạt động của sinh viên từ LCMS.<br> Hỏi khẳng định nào sau đây là đúng?', N'PB1 đúng, PB2 đúng.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (417, N'Theo định nghĩa của Compare Infobase Inc thì E-Learning là gì?', N'E-learning là một thuật ngữ dùng để mô tả việc học tập, đào tạo dựa trên công nghệ thông tin và truyền thông.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (418, N'Chọn phát biểu SAI?', N'LCMS không cho phép người dùng tạo ra và sử dụng lại những đơn vị nội dung nhỏ trong kho dữ liệu trung tâm.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (419, N'Đâu không phải là một trong các yêu cầu kỹ thuật của một hệ thống LMS điển hình?', N'Sử dụng lại, quản lý và phân phối nội dung học tập trong môi trường số từ một kho dữ liệu trung tâm.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (420, N'Đâu là định nghĩa của Lance Dublin, hướng tới e-learning trong doanh nghiệp?', N'“Việc sử dụng công nghệ để tạo ra, đưa các dữ liệu có giá trị, thông tin, học tập và kiến thức với mục đích nâng cao hoạt động của tổ chức và phát triển khả năng cá nhân”.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (421, N'Đâu không phải là một trong các yêu cầu điều khiển truy nhập và bảo mật của một hệ thống LMS điển hình?', N'Không có khả năng hạn chế truy nhập tới dữ liệu/nội dung theo người dùng.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (422, N'Theo quan điểm của cơ sở đào tạo, đâu KHÔNG phải là ưu điểm khi chuyển đổi các khoá học truyền thống sang khoá học e-learning?', N'Lợi ích của việc học trên mạng vẫn chưa được khẳng định.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (423, N'Đâu không phải là các chuẩn và đặc tả cho hệ thống e-learning?', N'Các chuẩn phân tích hệ thống.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
GO
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (424, N'Theo định nghĩa của William Horton thì E-Learning là gì?', N'E-learning là sử dụng các công nghệ Web và Internet trong học tập.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (425, N'Trong số các đặc điểm sau, đâu không phải là đặc điểm của hệ thống E-Learning?', N'Học không có sự hợp tác, phối hợp.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (426, N'Hệ thống TNU-Elearing sẽ gửi thông tin tài khoản đăng nhập cho học viên theo hình thức nào?<br>', N'Thư điện tử vào hộp mail.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (427, N'Khi nói về các chuẩn và đặc tả cho hệ thống e-learning, có 2 phát biểu như sau:<br> PB1: LMS, LCMS, công cụ soạn bài giảng, và kho chứa bài giảng sẽ hiểu nhau và tương tác được với nhau thông qua các chuẩn/đặc tả.<br> PB2: Các chuẩn quy định cách mà các nhà sản xuất nội dung có thể mô tả các khóa học và các module của mình để các hệ thống quản lý có thể tìm kiếm và phân loại được khi cần thiết được gọi là các chuẩn đóng gói.<br> Hỏi khẳng định nào sau đây là đúng?', N'PB1 đúng, PB2 sai.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (428, N'Theo Sloan Consortium lớp học nào dưới đây là lớp học truyền thống?', N'Không có nội dung được truyền tải bằng công nghệ Internet.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (429, N'Trong quá trình phát triển E-learning, ở giai đoạn 1984-1993, có thể tạo ra các bài giảng có tích hợp hình ảnh và âm thanh dựa trên công nghệ CBT.<br> CBT là viết tắt của cụm từ tiếng Anh nào?', N'Computer Based Training.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (430, N'Đâu không là mục đích khi phổ biến mục tiêu học tập trong e-learning?', N'Để bạn biết được giảng viên nào sẽ giảng dạy.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (431, N'Sau khi đăng nhập vào lớp học, sinh viên TNU-ELEARNING có thể thay đổi hình ảnh của mình. Chức năng thay đổi hình ảnh nằm trong mục nào dưới đây?', N'Cập nhật hồ sơ cá nhân.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (432, N'Khi nói về kiến trúc Web để phát triển hệ thống E-learning, có 2 phát biểu như sau:<br> PB1: Mô hình kiến trúc Web không cho phép tăng cường sự tương hợp và mở rộng trên cơ sở hạ tầng mạng và các ứng dụng khác nhau sẵn có trên thị trường e-learning.<br> PB2: Mô hình kiến trúc Web cho phép phát triển và sử dụng Intranet cũng như các dịch vụ Internet công cộng. Điều đó cho phép việc lựa chọn các công nghệ mạng là hoàn toàn trong suốt đối với các đơn vị phát triển nội dung và các nhà cung cấp dịch vụ.<br> Hỏi khẳng định nào sau đây là đúng?', N'PB1 sai, PB2 đúng.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (433, N'Chữ E trong cụm từ E-learning là viết tắt của từ tiêng Anh nào dưới đây?', N'Electronic', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (434, N'Trong quy trình học tập E-learning của sinh viên, ở bước Học tập gồm có bốn hoạt động chính, đó là những hoạt động nào?', N'Tiếp thu bài giảng; Tương tác; Luyện tập; Kiểm tra và thi kết thúc môn học.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (435, N'Trong quá trình học e-learning, đâu không phải là 1 trong 4 hoạt động chính của sinh viên e-learning?', N'Lướt web.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (436, N'SCORM là viết tắt của cụm từ tiếng Anh nào?', N'Sharable Content Object Reference Model.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (437, N'Quy trình sinh viên học tập trên hệ thống e-learning KHÔNG bao gồm bước nào?', N'Gặp gỡ giáo viên.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (438, N'LMS là viết tắt của cụm từ tiếng Anh nào?', N'Learning Management System.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA], [urlQ], [urlA], [name]) VALUES (439, N'Trong quá trình sử dụng diễn đàn lớp học, sinh viên KHÔNG thể thực hiện thao tác nào dưới đây?', N'Xóa chủ đề thảo luận.', NULL, NULL, NULL, NULL, N'Nhập môn Internet và E-learning - AUM0120')
SET IDENTITY_INSERT [dbo].[question] OFF
USE [master]
GO
ALTER DATABASE [getAnswer] SET  READ_WRITE 
GO
