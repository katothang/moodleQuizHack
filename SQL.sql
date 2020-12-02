USE [master]
GO
/****** Object:  Database [getAnswer]    Script Date: 2/12/2020 10:12:36 PM ******/
CREATE DATABASE [getAnswer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'getAnswer', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\getAnswer.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'getAnswer_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\getAnswer_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [getAnswer] SET COMPATIBILITY_LEVEL = 110
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
ALTER DATABASE [getAnswer] SET AUTO_CREATE_STATISTICS ON 
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
USE [getAnswer]
GO
/****** Object:  Table [dbo].[question]    Script Date: 2/12/2020 10:12:36 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[question] ON 

INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (248, N'Cho các số liệu sau trong một công ty trách nhiệm hữu hạn (triệu VNĐ): Tài sản đầu kỳ: 150 Nợ phải trả đầu kỳ: 60 Tài sản cuối kỳ: 280 Nợ phải trả cuối kỳ: 120, nếu trong kỳ tổng vốn góp tăng thêm 20 (các thành viên công ty góp thêm vốn), lợi nhuận trong kỳ sẽ là:', N'50', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (249, N'Công ty NLKT bắt đầu tiến hành dịch vụ tư vấn cho khách hàng vào ngày 5/08/N và hoàn thành vào ngày 15/08/N. 50% giá trị hợp đồng đã được khách hàng trả trước từ tháng 07/N. Số còn lại trả dần trong tháng 9 và tháng 10 mỗi tháng 25%. Doanh thu dịch vụ tư vấn của công ty NLKT sẽ được ghi nhận vào báo cáo tài chính của tháng:', N'tháng 8', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (250, N'Nợ phải trả của doanh nghiệp được xác định bằng:', N'Tổng Nguồn vốn – Nguồn vốn chủ sở hữu', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (251, N'Khi lập báo cáo, kế toán ghi nhầm một khoản mục “Trả trước ngắn hạn cho người bán” 300 sang phần Nguồn vốn, sai sót này sẽ làm Tài sản và Nguồn vốn chênh lệch nhau:', N'Tài sản nhỏ hơn Nguồn vốn 600', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (252, N'Công ty NLKT đang sở hữu một căn nhà dùng làm văn phòng từ năm 2007. Nguyên giá của căn nhà là 1.200 triệu VND. Cuối năm 2012, giá thị trường của căn nhà là 2.000 triệu VND. Sự thay đổi này trên thị trường làm cho:', N'giá trị căn nhà trên báo cáo của công ty NLKT không thay đổi.', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (253, N'Nguyên vật liệu đang đi đường thuộc:', N'Tài sản ngắn hạn của doanh nghiệp', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (254, N'Bảng cân đối thử có đặc điểm', N'tập hợp các tài khoản kế toán cùng với số dư tương ứng của chúng tại 1 thời điểm nhất định.', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (255, N'Định khoản sau làm cho tài sản và nguốn vốn của Doanh nghiệp biến đổi như thế nào: Nợ TK Hàng hoá: 100 Có TK Tiền mặt: 100', N'Tổng tài sản không thay đổi', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (256, N'Xác định Nội dung kinh tế của định khoản dưới đây: Nợ TK Vay ngắn hạn: 500 Có TK Tiền gửi ngân hàng: 500', N'Thanh toán tiền vay ngắn hạn bằng chuyển khoản 500', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (257, N'Công ty NLKT thanh toán toàn bộ tiền lương còn nợ cho người lao động bằng chuyển khoản, số tiền 1.550 triệu VND. Lựa chọn cách ghi đúng cho nghiệp vụ này:', N'Nợ TK Phải trả CNV: 1.550', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (258, N'Số phát sinh bên Nợ của tài khoản Lợi nhuận chưa phân phối thể hiện:', N'Lợi nhuận đã được chia hoặc khoản Lỗ phát sinh', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (259, N'Công ty NLKT (tính thuế khấu trừ) mua một ô tô vận tải, giá chưa thuế là 500 triệu VND, thuế suất thuế GTGT là 10%, toàn bộ đã thanh toán bằng chuyển khoản. Nghiệp vụ này được kế toán ghi:', N'Nợ TK Tài sản cố định: 500', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (260, N'Khoản thu nào sau đây không phải là doanh thu:', N'khoản tiền thu từ nhượng bán TSCĐ', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (261, N'Công ty Mit hoàn thành cung cấp dịch vụ trong tháng 1/2013. Tiền hàng được thanh toán toàn bộ trong tháng 2/2013. Theo cơ sở dồn tích, doanh thu sẽ được ghi nhận vào tháng nào:', N'tháng 1/2013', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (262, N'Công ty NLKT cho công ty TTT thuê nhà làm văn phòng trong 3 năm, từ 1/1/2013 đến 2015. Toàn bộ tiền thuê đã nhận trước vào ngày ký hợp đồng là 3.600 triệu VND. Nghiệp vụ này làm cho:', N'Doanh thu của công ty NLKT năm 2013 tăng thêm 1.200 triệu.', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (263, N'Tháng 1/2013, công ty Chago hoàn thành cung cấp một đơn hàng cho khách hàng với tổng giá trị 741.000.000 đồng, khách hàng đã thanh toán bằng chuyển khoản. Do khách hàng là khách quen nên Chago cho họ hưởng khoản chiết khấu 6.000.000 đồng bằng tiền mặt. Chi phí vận chuyển Chago phải thanh toán 5.000.000 đồng. Doanh thu của Chago từ nghiệp vụ trên:', N'735.000.000 đồng', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (264, N'Khi bán hàng, khoản nào sau đây làm giảm doanh thu của doanh nghiệp:', N'chiết khấu thương mại dành cho khách hàng', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (265, N'Năm 2012, Doanh nghiệp mua một thiết bị sản xuất với nguyên giá 100 triệu. Thời gian sử dụng ước tính 5 năm và khấu hao theo phương pháp đường thẳng. Theo nguyên tắc phù hợp, chi phí sử dụng thiết bị sản xuất (chi phí khấu hao) đối với thiết bị này trong năm là:', N'20 triệu VNĐ', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (266, N'Doanh nghiệp mua 5 chiếc máy tính bấm tay và giao ngay cho bộ phận kế toán sử dụng. Giá mua theo hóa đơn là 15 triệu cả 5 chiếc, thời gian sử dụng ước tính là 2 năm. Kế toán sẽ ghi:', N'lập dự toán phân bổ 15 triệu vào chi phí từng kỳ', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (267, N'Nghiệp vụ nào sau đây làm tăng nguyên giá TSCĐ:', N'doanh nghiệp mua một dây chuyền sản xuất', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (268, N'Khi tính giá hàng tồn kho theo phương pháp giá bình quân cả kì dự trữ', N'Đơn giá hàng tồn kho thấp hơn đơn giá nhập cao nhất trong kỳ', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (269, N'Công ty Acecook Việt Nam đã quyết định bán một trong các máy sản xuất cũ của nó vào ngày 30 tháng sáu năm 2012. Máy đã được mua với 800 triệu vào ngày 1 tháng 1 năm 2008, và khấu hao theo phương pháp đường thẳng trong 10 năm. Nếu máy sản xuất đã được bán với 260 triệu, số tiền lãi hoặc lỗ được ghi nhận vào thời điểm bán là bao nhiêu?', N'Lỗ 180 triệu', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (270, N'Công ty NLKT nhập kho một lô vật liệu đang đi đường từ kì trước trị giá 250 triệu VND. Nghiệp vụ này làm cho:', N'Ảnh hưởng đến đơn giá của NVL xuất kho trong kỳ', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (271, N'Kế toán nghiệp vụ khấu hao TSCĐ hữu hình ghi:', N'Có TK Khấu hao lũy kế', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (272, N'Khi nhận vốn góp, vốn đầu tư của các chủ sở hữu, bên tham gia liên doanh bằng NVL trị giá 100 triệu đồng, kế toán ghi:', N'Nợ TK "NVL" 100tr Có TK "Vốn góp CSH" 100 tr', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (273, N'Ngày 01/09/2012 Doanh nghiệp mua hàng hóa của công ty H với giá 1.200.000.000vnđ, thanh toán bằng khoản vay 12 tháng, lãi suất 12%/ năm. Bút toán điều chỉnh vào 31/12/2012 là', N'Nợ TK Chi phí lãi vay/ Có TK lãi vay phải trả', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (274, N'Ngày 01/07/2013 Doanh nghiệp nhận 360.000.000vnđ do khách hàng thanh toán cho một hợp đồng thực hiện trong 18 tháng. Giả sử kỳ kế toán theo quý, ngày 30/06/2014 kế toán ghi nhận doanh thu là:', N'60.000.000vnđ', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (275, N'Doanh thu thuần: 1.200.000.000vnđ Tổng CF: 960.000.000vnđ CF hợp lý 936.000.000vnđ. Giả sử thuế suất thuế thu nhập doanh nghiệp là 25% thì tiền thuế TNDN phải nộp là', N'66.000.000vnđ', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (276, N'Thuế thu nhập doanh nghiệp chưa nộp thuộc', N'Nợ phải trả', NULL, NULL)
INSERT [dbo].[question] ([id], [question], [answer], [imageQ], [imageA]) VALUES (277, N'Việc huy động vốn của doanh nghiệp không bao gồm nghiệp vụ nào dưới đây:', N'thu tiền hàng còn thiếu của khách hàng', NULL, NULL)
SET IDENTITY_INSERT [dbo].[question] OFF
USE [master]
GO
ALTER DATABASE [getAnswer] SET  READ_WRITE 
GO
