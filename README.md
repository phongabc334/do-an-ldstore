# do-an-ldstore


BỘ CÔNG THƯƠNG
TRƯỜNG ĐẠI HỌC CÔNG NGHIỆP HÀ NỘI
---------------------------------------







ĐỒ ÁN TỐT NGHIỆP
NGÀNH CÔNG NGHỆ THÔNG TIN

ĐỀ TÀI: XÂY DỰNG WEBSITE BÁN ĐỒNG HỒ THÔNG MINH CHO CỬA HÀNG LDSTORE



GVHD                      : ThS. Trần Thanh Hùng
Sinh viên thực hiện  : Lê Hồng Phong
Mã sinh viên            : 2018603147
Lớp                           : CNTT3-K13




Hà Nội – Năm 2022

LỜI CẢM ƠN
Trước tiên, em xin gửi lời cảm ơn đến ThS. Trần Thanh Hùng đã nhiệt tình hướng dẫn và giúp đỡ em trong thời gian thực tập tốt nghiệp hoàn thành đề tài “Xây dựng website bán đồng hồ thông minh cho cửa hàng LdStore”. Cảm ơn thầy đã hướng dẫn, góp ý cho em về kiến thức phân tích thiết kế hệ thống, những kiến thức thực tế và ứng dụng cao. 
Đặc biệt trong quá trình thực hiện đề tài thực tập tốt nghiệp, thầy đã cho em có cách phân tích và xây dựng cơ sở dữ liệu, hệ thống đáp ứng nhu cầu thiết yếu cho bài toán của đề tài. Với những buổi thảo luận đầy tâm huyết, em vừa được học kiến thức, vừa sửa được những lỗi mắc phải trong khi thực hiện đề tài. Vì vậy em tăng thêm khả năng phân tích, thiết kế và tư duy để xây dựng hệ thống đạt chuẩn. 
Trong quá trình thực tập, cũng như là trong quá trình làm bài báo cáo đồ án, khó tránh khỏi sai sót, rất mong các thầy, cô bỏ qua. Đồng thời do trình độ lý luận cũng như kinh nghiệm thực tiễn còn hạn chế nên bài báo cáo không thể tránh khỏi những thiếu sót, em rất mong nhận được ý kiến đóng góp thầy, cô để em học thêm được nhiều kinh nghiệm và sẽ hoàn thành tốt nhất có thể!
 Em xin chân thành cảm ơn!







 
MỤC LỤC
DANH MỤC CÁC KÝ HIỆU, CÁC CHỮ VIẾT TẮT	1
DANH MỤC CÁC BẢNG	2
DANH MỤC CÁC HÌNH ẢNH	3
MỞ ĐẦU	6
1. Lý do chọn đề tài	6
2. Phương pháp nghiên cứu	7
3. Mục tiêu nghiên cứu	7
4. Nội dung nghiên cứu	7
5. Những kiến thức cần áp dụng	8
CHƯƠNG 1: KHẢO SÁT VÀ PHÂN TÍCH ĐỀ TÀI	9
1.1 Khảo sát	9
1.1.1 Ưu nhược điểm của hệ thống bán hàng cũ	9
1.1.2 Xác định và phân tích các giá trị nghiệp vụ:	10
1.1.3 Mô tả bài toán	11
1.2.  Công nghệ sử dụng	13
1.2.1 Giới thiệu về Java Spring MVC	13
1.2.2 Hệ quản trị MySQL	18
CHƯƠNG 2: PHÂN TÍCH THIẾT KẾ HỆ THỐNG	20
2.1. Xây dựng biểu đồ Use Case (Use Case)	20
2.1.1 Xác định tác nhân của hệ thống	20
2.1.2. Xác định các quyền sử dụng của hệ thống	20
2.2. Chi tiết các Use Case	21
2.2.1. Use Case Quản lý Tài Khoản	21
2.2.2. Use Case Quản lý Sản phẩm	26
2.2.3. Use Case Quản lý Bình Luận	30
2.2.4. Use Case Quản lý hãng sản xuất	34
2.2.5. Use Case Quản lý đơn hàng	38
2.2.6. Use Case Quản lý tin tức	42
2.2.7. Use Case đăng nhập	46
2.2.8. Use Case đăng xuất	47
2.2.9. Use Cace đặt hàng	48
CHƯƠNG 3: THIẾT KẾ DỮ LIỆU VÀ CÀI ĐẶT CHƯƠNG TRÌNH	49
3.1 Thiết kê hệ thống	49
3.1.1 Lớp Người sử dụng (User)	49
3.1.2 Lớp Sản phẩm (Product)	50
3.1.3 Lớp Hãng sản xuất (Provider)	52
3.1.4 Lớp Đơn hàng (Bills)	52
3.1.5 Lớp Chi tiết đơn hàng (BillDetail)	53
3.1.6	Lớp Tin tức (News)	53
3.2 Cài đặt chường trình	54
3.2.1: Giao diện phía khách hàng	54
3.2.2: Giao diện phía quản trị	66
3.2.2.1: Đối với người quản trị	66
3.2.2.2 : Đối với Nhân viên	78
KẾT LUẬN	88
4.1 Đánh giá kết quả	88
4.2 Hướng phát triển	89
TÀI LIỆU THAM KHẢO	90

 
DANH MỤC CÁC KÝ HIỆU, CÁC CHỮ VIẾT TẮT

STT
Từ viết tắt	Ý nghĩa
1	CSDL	Cơ sở dữ liệu
2	KH	Khách hàng
3	NQL	Người quản lý
4	NV	Nhân viên
5	SX	Sản xuất
6	TT	Thông tin

 
DANH MỤC CÁC BẢNG
Bảng 2. 1: các quyền sử dụng của hệ thống	20

Bảng 3. 1: Lớp người sử dụng	50
Bảng 3. 2: Lớp sản phẩm	51
Bảng 3. 3: Lớp hãng sản xuất	52
Bảng 3. 4: Lớp đơn hàng	53
Bảng 3. 5: Lớp chi tiết đơn hàng	53
Bảng 3. 6: Lớp tin tức	54
Bảng 3. 7: Lớp bình luận	54




















DANH MỤC CÁC HÌNH ẢNH
Hình 1. 1: Mô hình MVC	17
Hình 1. 2: Sự tương tác giữa các thành phần trong MVC	18

Hình 2. 1: Biểu đồ use case tổng quan	21
Hình 2. 2: biểu đồ use case quản lý tài khoản	21
Hình 2. 3: Biểu đồ lớp tham gia Use Case Quản lý tài khoản	24
Hình 2. 4: Biểu đồ tuần tự Use case quản lý tài khoản	25
Hình 2. 5: Biểu đồ Use Case quản lí sản phẩm	26
Hình 2. 6: Biểu đồ lớp tham gia Use Case Quản lý sản phẩm	29
Hình 2. 7: Biểu đồ tuần tự Use Case Quản lý sản phẩm	30
Hình 2. 8: Biểu đồ Use Case quản lí bình luận	31
Hình 2. 9: Biểu đồ lớp tham gia Use Case quản lý bình luận	33
Hình 2. 10: Biểu đồ tuần tự Use Case quản lý bình luận	34
Hình 2. 11: Biểu đồ Use Case quản lý hãng SX	35
Hình 2. 12: Biểu đồ lớp tham gia Use Case quản lý hãng sản xuất	37
Hình 2. 13: Biểu đồ tuần tự Use Case quản lý hãng sản xuất	38
Hình 2. 14: Biểu đồ Use Case quản lí đơn hàng	39
Hình 2. 15: Biểu đồ lớp tham gia Use Case quản lý đơn hàng	41
Hình 2. 16: Biểu đồ tuần tự Use Case quản lý đơn hàng	42
Hình 2. 17: Biểu đồ Use Case quản lí tin tức	43
Hình 2. 18: Biểu đồ lớp tham gia Use Case quản lý tin tức	45
Hình 2. 19: Biểu đồ tuần tự Use Case quản lý tin tức	46

Hình 3. 1: Thiêt kế database hệ thống	49
Hình 3. 2: Giao diện trang chủ	55
Hình 3. 3: Giao diện trang tất cả sản phẩm	56
Hình 3. 4: Giao diện trang xem sản phẩm theo danh mục	57
Hình 3. 5: Giao diện trang tìm kiếm	58
Hình 3. 6: Giao diện trang xem chi tiết sản phẩm	59
Hình 3. 7: Giao diện trang bình luận sản phẩm	60
Hình 3. 8: Giao diện trang đăng nhập	60
Hình 3. 9: Giao diện trang đăng ký	61
Hình 3. 10: Giao diện trang giỏ hàng	62
Hình 3. 11: Giao diện trang đặt hàng	63
Hình 3. 12: Giao diện trang thông tin tài khoản	63
Hình 3. 13: Giao diện trang đổi thông tin tài khoản	64
Hình 3. 14: Giao diện trang đổi mật khẩu	64
Hình 3. 15: Giao diện trang đơn hàng	65
Hình 3. 16: Giao diện trang chi tiết đơn hàng	65
Hình 3. 17: Giao diện trang đăng nhập	66
Hình 3. 18: Giao diện trang thống kê	67
Hình 3. 19: Giao diện trang quản lý sản phẩm	68
Hình 3. 20: Giao diện trang thêm sản phẩm	69
Hình 3. 21: Giao diện trang xem chi tiết sản phẩm	69
Hình 3. 22: Giao diện trang xem bài viết sản phẩm	70
Hình 3. 23: Giao diện trang xem bình luận về sản phẩm	71
Hình 3. 24: Giao diện trang cập nhật sản phẩm	71
Hình 3. 25: Giao diện trang quản lý danh mục	72
Hình 3. 26: Giao diện trang thêm danh mục	72
Hình 3. 27: Giao diện trang cập nhật danh mục	73
Hình 3. 28: Giao diện trang quản lý đơn hàng	73
Hình 3. 29: Giao diện trang chi tiết đơn hàng	74
Hình 3. 30: Giao diện trang cập nhật đơn hàng	74
Hình 3. 31: Giao diện trang quản lý tài khoản	75
Hình 3. 32: Giao diện trang thêm tài khoản	75
Hình 3. 33: Giao diện trang thông tin tài khoản	76
Hình 3. 34: Giao diện trang cập nhật tài khoản	76
Hình 3. 35: Giao diện trang đổi mật khẩu tài khoản	76
Hình 3. 36: Giao diện trang quản lý tin tức	77
Hình 3. 37: Giao diện trang thêm mới tin tức	77
Hình 3. 38: Giao diện trang xem chi tiết tin tức	78
Hình 3. 39: Giao diện trang xem cập nhật tin tức	78
Hình 3. 40: Giao diện trang chủ của nhân viên quản lý sản phẩm	79
Hình 3. 41: Giao diện trang quản lý sản phẩm của nhân viên	79
Hình 3. 42: Giao diện trang thêm sản phẩm của nhân viên	80
Hình 3. 43: Giao diện trang cập nhật sản phẩm của nhân viên	80
Hình 3. 44: Giao diện trang xem chi tiết sản phẩm của nhân viên	81
Hình 3. 45: Giao diện trang xem bài viết của nhân viên	81
Hình 3. 46: Giao diện trang quản lý bình luận sản phẩm	82
Hình 3. 47: Giao diện trang chủ của nhận viên quản lý đơn hàng	82
Hình 3. 48: Giao diện trang quản lý đơn hàng của nhân viên	83
Hình 3. 49: Giao diện trang xem chi tiết đơn hàng của nhân viên	83
Hình 3. 50: Giao diện trang cập nhật đơn hàng của nhân viên	84
Hình 3. 51: Giao diện trang chủ của nhân viên quản lý tin tức	84
Hình 3. 52: Giao diện trang quản lý tin tức của nhân viên	85
Hình 3. 53: Giao diện trang thêm tin tức của nhân viên	85
Hình 3. 54: Giao diện trang xem chi tiết tin tức của nhân viên	86
Hình 3. 55: Giao diện trang cập nhật tin tức của nhân viên	86
Hình 3. 56: Giao diện trang cập nhật tài khoản của nhân viên	87
Hình 3. 57: Giao diện trang đổi mật khẩu tài khoản của nhân viên	87
 
MỞ ĐẦU
1.	Lý do chọn đề tài
Ngày nay, ứng dụng công nghệ thông tin và việc tin học hóa được xem là một trong những yếu tố mang tính quyết định trong hoạt động của các chính phủ, tổ chức, cũng như của các công ty, nó đóng vai trò hết sức quan trọng, có thể tạo ra những bước đột phá mạnh mẽ. Cùng với sự phát triển không ngừng về kỹ thuật máy tính và mạng điện tử, công nghệ thông tin cũng được những công nghệ có đẳng cấp cao và lần lượt chinh phục hết đỉnh cao này đến đỉnh cao khác. 
Mạng Internet là một trong những sản phẩm có giá trị hết sức lớn lao và ngày càng trở nên một công cụ không thể thiếu, là nền tảng chính cho sự truyền tải, trao đổi thông tin trên toàn cầu. Giờ đây, mọi việc liên quan đến thông tin trở nên thật dễ dàng cho người sử dụng: chỉ cần có một máy tính kết nối internet và một dòng dữ liệu truy tìm thì gần như lập tức… cả thế giới về vấn đề mà bạn đang quan tâm sẽ hiện ra, có đầy đủ thông tin, hình ảnh và thậm chí đôi lúc có cả những âm thanh nếu bạn cần… Bằng internet, chúng ta đã thực hiện được nhiều công việc với tốc độ nhanh hơn và chi phí thấp hơn nhiều so với cách thức truyền thống. 
Chính điều này, đã thúc đẩy sự khai sinh và phát triển của thương mại điện tử và chính phủ điện tử trên khắp thế giới, làm biến đổi đáng kể bộ mặt văn hóa, nâng cao chất lượng cuộc sống con người. Trong hoạt động sản xuất, kinh doanh, giờ đây, thương mại điện tử đã khẳng định được vai trò xúc tiến và thúc đẩy sự phát triển của doanh nghiệp. Đối với một cửa hàng hay shop, việc quảng bá và giới thiệu đến khách hàng các sản phẩm mới đáp ứng được nhu cầu của khác hàng sẽ là cần thiết. 


Vậy phải quảng bá thế nào đó là xây dựng được một Website cho cửa hàng của mình quảng bá tất cả các sản phẩm của mình bán. Vì vậy, em đã thực hiện đề tài “Xây dựng website bán đồng hồ thông minh cho cửa hàng LdStore”.
2. Phương pháp nghiên cứu
Khảo sát tình hình thực trạng trong nước hiện nay, thông qua việc nghiên cứu các Website đã tồn tại, áp dụng những điểm tốt, phát triển những phần có thể cải tiến, phù hợp với người dùng.
Kết hợp việc nghiên cứu lí thuyết và kinh nghiệm thực tế.
3. Mục tiêu nghiên cứu
Phần mềm tạo ra cố gắng hướng đến người dùng với chức năng và đặc biệt phải mô tả được đầy đủ thông tin mà người dùng cần đến. Viết phần mềm không thể phi thực tế mà thông tin cần thiết mà phải đặc tả toàn bộ thông tin như trong quá trình lưu trữ.
Quản lý các thông tin khách hàng, ban quản trị, đưa ra các sản phẩm đa dạng và phù hợp với nhiều nhu cầu người sử dụng.
4. Nội dung nghiên cứu
	Khảo sát hệ thống:
Khảo sát các trang web bán hàng trực tuyến nổi bật như: fptshop.com.vn, cellphones.com.vn, thegioididong.com từ đó áp dụng để xây dựng website bán đồng hồ thông minh.
	Phân tích chức năng hệ thống:
Vẽ và phân tích biểu đồ User Case, biểu đồ tuần tự, biểu đồ lớp. 
	Phân tích thiết kế cơ sở dữ liệu:
Phân tích thiết kế các bảng, kiểu dữ liệu lưu trữ, quan hệ giữa các bảng.
	Phân tích thiết kế chương trình. 

5. Những kiến thức cần áp dụng
	Để thiết kế được hệ thống em đã sử dụng những kiến thức đã học vào project này: 
•	Ngôn ngữ lập trình: JAVA SPRING MVC
•	Hệ quản trị cơ sở dữ liệu: SQL Server
•	Công cụ: Visual studio code, Eclipse
•	Html, css, js, jquery, datatable, bootstrap, font awesome, ckeditor.
	Những công việc chính khi thực hiện đề tài:
•	Khảo sát và nghiên cứu đề tài 
•	Tìm kiếm và phân tích dữ liệu 
•	Khảo sát sơ bộ 
•	Phân tích và thiết kế hệ thống 
•	Xây dựng hệ thống 
•	Hoàn thành hệ thống và báo cáo 
 
CHƯƠNG 1: KHẢO SÁT VÀ PHÂN TÍCH ĐỀ TÀI
1.1 Khảo sát
Đề tài: Xây dựng website bán đồng hồ thông minh cho cửa hàng Ldstore
Quy trình bàn hàng tại cửa hàng truyền thống được tóm tắt như sau:
Nhân viên sẽ tư vấn cho khách hàng loại máy phù hợp với nhu cầu người dùng. Sau đó nhân viên sẽ chuyển phiếu yêu cầu cho bên bộ phận kho để kiểm tra xem loại máy đó còn hàng hay không? Nếu hàng đã hết thì sẽ tư vấn máy khác cho khách hàng hoặc khách hàng sẽ phải đợi trong vòng 2- 3 ngày hàng về. Nếu còn hàng thì mang máy ra để khách hàng test máy. Sau đó bộ phận kế toán sẽ viết hóa đơn, phiếu bảo hành và thanh toán đồng thời cũng phải ghi giao dịch vào sổ bán hàng. Cuối tuần và cuối tháng nhân viên sẽ dựa vào sổ bán hàng để thống kê số lượng máy tính bán được và số tiền thu được để làm báo cáo đưa lên ban quản trị cửa hàng.
Khi khách hàng đến bảo hành máy thì nhân viên sẽ kiểm tra hóa đơn và xem phiếu bảo hành và tra cứu trong sổ bán hàng để xem thông tin máy. Nếu máy vẫn trong thời hạn bảo hành thì chuyển cho bộ phận kỹ thuật để tiến hành sửa chữa. Sau khi sửa chữa xong thì bàn giao lại cho khách hàng.
1.1.1 Ưu nhược điểm của hệ thống bán hàng cũ

	Ưu điểm: Khách hàng đến tận cửa hàng xem và test máy nên chất lượng máy được đảm bảo
	Nhược điểm:
•	Quá trình bán hàng phức tạp, để khách hàng phải chờ đợi lâu (thậm chí là 2-3 ngày)
•	Khách hàng lựa chọn máy tính tốn nhiều thời gian và công sức vì mỗi lần chọn máy thì lại phải vào trong kho kiểm tra còn hàng hay không
•	Tốn quá nhiều thời gian cho việc kiểm kho
•	Hình thức thanh toán không đa dạng
•	Nhân viên mất quá nhiều thời gian và công sức để làm báo cáo thống kê theo tuần và theo tháng
•	Doanh số ít vì cửa hàng không được quảng bá rộng rãi
•	Khách hàng có yêu cầu, thắc mắc gì phải đến tận cửa hàng mới được giải quyết
•	Cửa hàng cũng sẽ phải thuê nhiều nhân viên (nhân viên tư vấn, nhân viên kế toán, nhân viên kiểm kho…)
•	Người quản lý sẽ gặp khó khăn trong việc quản lý nhân viên của mình
 Đòi hỏi phải có một hệ thống bàn máy tính mới để khắc phục những nhược điểm của hệ thống cũ với những yêu cầu sau: 
	Tối ưu hóa quá trình bán hàng, không phải để khách hàng đợi lâu và việc thanh toán cũng phải nhanh chóng và chính xác
	Thanh toán qua nhiều hình thức để khách hàng có nhiều lựa chọn
	Tiết kiệm được thời gian và công sức cho nhân viên khi làm báo cáo, thống kê tổng hợp
	Nắm được tình trạng hàng trong kho một cách nhanh chóng
	Giảm thiếu được số lượng nhân viên
	Giải quyết nhanh chóng những yêu cầu, thắc mắc của khách hàng
	Quảng bá cửa hàng
1.1.2 Xác định và phân tích các giá trị nghiệp vụ:
Với hệ thống quản lý mới, cho thấy mang lại nhiều lợi ích và giá trị hơn hệ thống cũ
a.	Mang lại giá trị nghiệp vụ:
-	Đối với người quản trị: Tăng khả năng xử lý thông tin: Dễ dàng quản lý nhân viên và sản phẩm mà không tốn nhiều thời gian và công sức.
-	Đối với nhân viên:
•	Việc thống kê kinh doanh nhanh chóng và chính xác.
•	Dễ dàng quản lý khách hàng.
b.	Mang lại giá trị kinh tế:
-	Tăng doanh số bán hàng, cũng như quản lý được việc kinh doanh của cửa hàng để kịp thời đưa ra các phương án kinh doanh phù hợp.
-	Việc thanh toán nhanh chóng, dễ dàng, an toàn, chính xác, tiện lợi.
-	Với hệ thống này, không cần sử dụng quá nhiều nhân viên nên tiết kiệm được chi phí chi trả cho nhân viên.
c.	Mang lại giá trị sử dụng:
-	Khách hàng dễ dàng tìm kiếm sản phẩm mình muốn mua mà không mất quá nhiều thời gian, công sức.
-	Hệ thống dễ sử dụng nên ai cũng có thể sử dụng được.
-	Tối ưu hóa quá trình mua bán hàng.
d.	Khắc phục được nhược điểm của hệ thống cũ, hỗ trợ phát triển các chiến lược lâu dài, đáp ứng các ưu tiên, các ràng buộc quan trọng của hệ thống.
-	Nếu như ở hệ thống quản lý bán sản phẩm qua giấy tờ, tốc độ xử lý thông tin chậm hơn rất nhiều, độ chính xác cũng không cao.
-	Doanh số có thể ít hơn so với việc áp dụng hệ thống mới bán hàng, vì việc mua hàng online đã trở nên quá phổ biến.
-	Việc quản lý nhân viên, sản phẩm trở nên phức tạp.
1.1.3 Mô tả bài toán
Nhân viên cửa hàng sẽ đưa thông tin của các loại đồng hồ lên hệ thống của mình. Việc đưa thông tin cũng phải theo một trật tự hợp lý. Ví dụ như đưa thông tin theo các hãng đồng hồ như Apple, Xiaomi, Asus... Thông tin được đưa lên bao gồm: tên đồng hồ, cấu hình, hình ảnh, chức năng, giá cả, khuyến mãi, tình trạng hàng trong kho… Người quản trị cũng có quyền thêm mới (khi có mặt hàng mới về), sửa đổi thông số của mặt hàng, và xóa đi những mặt hàng không còn hoặc đã lỗi.
Với khách hàng thì được xem các sản phẩm trên trang web, xem thông tin về các loại mặt hàng. Để mua hàng, bạn phải đăng ký là thành viên của trang web. Khi đã là thành viên, bạn đăng nhập theo tên truy nhập và mật khẩu của mình. Khi đó, bạn có quyền mua hàng. Với các mặt hàng, bạn có quyền chọn mua hàng, đưa nó vào trong giỏ hàng của mình với số lượng các mặt hàng. Bạn cũng có thể xóa đi loại sản phẩm mà mình đã cho vào giỏ hàng của mình. Ở trang này, bạn có thể chọn hình thức thanh toán chuyển khoản hoặc thanh toán khi nhận hàng…  Nếu như thanh toán chuyển khoản thì giao dịch qua thẻ ATM và hệ thống sẽ gửi giấy xác nhận mua hàng cho khách hàng, còn nếu thanh toán trực tiếp có 2 phương án. Phương án 1 là khách hàng trực tiếp đến địa chỉ cửa hàng và thanh toán. Phương án 2 là hình thức “Ship COD” thì hệ thống sẽ gửi hóa đơn đến khách hàng.
Khi có một đơn đặt hàng, người quản trị sẽ kiểm tra và xác nhận đơn đặt hàng. Sau đó chuyển hàng cho nhân viên giao hàng đến địa chỉ người mua. Nếu như khách hàng thanh toán trực tiếp theo hình thức “Ship COD” thì nhân viên giao hàng xác nhận hóa đơn của khách hàng và thanh toán tiền. Nếu thanh toán chuyển khoản thì nhân viên giao hàng xác nhận giấy mua hàng và giao hàng cho khách. Như vậy là quá trình mua bán đã hoàn thành.
Nếu khách hàng mang máy tính đã ở mua ở trang web cửa hàng đến bảo hành thì nhân viên sẽ nhập mã số sản phẩm trên hóa đơn và hệ thống sẽ hiển thị toàn bộ thông tin về mặt hàng cũng như ngày bảo hành. 
Nếu máy tính còn trong thời gian bảo hành thì chuyển máy sang bộ phận kỹ thuật. Bộ phận kỹ thuật sẽ kiểm tra tình trạng máy và sửa chữa. Sau khi sửa chữa, bảo hành xong thì bàn giao cho khách.


1.2.  Công nghệ sử dụng 
1.2.1 Giới thiệu về Java Spring MVC
1.2.1.1 Ngôn ngữ lập trình Java
Java là một ngôn ngữ lập trình hướng đối tượng, dựa trên lớp được thiết kế để có càng ít phụ thuộc thực thi càng tốt. Nó là ngôn ngữ lập trình có mục đích hung cho phép các nhà phát triển ứng dụng viết một lần, chạy ở mọi nơi (WORA), nghĩa là mã Java đã biên dịch có thể chạy trên tất cả các nền tảng hỗ trợ Java mà không cần biên dịch lại. Các ứng dụng Java thường được biên dịch thành bytecode có thể chạy trên bất kỳ máy ảo Java (JVM) nào bất kể kiến trúc máy tính bên dưới. Cú pháp của Java tương tự như C và C++, nhưng có ít cơ sở cấp thấp hơn các ngôn ngữ trên. Java runtime cung cấp các khả năng động (chẳng hạn như phản ánh và sửa đổi mã thời gian chạy) thường không có sẵn trong các ngôn ngữ biên dịch truyền thống. Tính đến năm 2019 Java là một trong những ngôn ngữ lập trình phổ biến nhất được sử dụng theo GitHub, đặc biệt cho các ứng dụng web máy khách-máy chủ, với 9 triệu nhà phát triển đã được báo cáo.
Ưu điểm:
- Là ngôn ngữ thuần hướng đối tượng dễ học, dễ đọc mã hơn hát triển nhanh và có khả năng ít lỗi hơn (do quản lý bộ nhớ ít hơn) so với những ngôn ngữ lập trình khác như C++…
- Java được sử dụng trên mọi thiết bị: Hầu hết các nền tảng chéo kể từ khi nó ra đời đều được thiết kế cho nó và Sun tạo ra JRE và JDK cho hầu hết các nền tảng.
- Là ngôn ngữ có mã nguồn mở nên dễ dàng để tham khảo thư viện, có cộng đồng người sử dụng lớn.
- Java dễ thực thi, sử dụng, dễ tiếp cận: Các IDE miễn phí khác nhau có sẵn trên tất cả các nền tảng, chẳng hạn như Eclipse.
- Công cụ thu gom rác dọn dẹp đồ vật một khi chúng không còn được sử dụng, vì vậy bạn không phải tự mình theo dõi mọi thứ.
- Multi-Threading: Một tiến trình thực hiện nhiều luồng đồng thời. Một ứng dụng Java ngoài luồng chính có thể có các luồng khác thực thi đồng thời làm ứng dụng chạy nhanh và hiệu quả hơn. 
- Các chương trình có thể được đóng gói thành các tệp jar với các tệp dữ liệu khác nhau trong các tệp jar khác nhau và được người dùng truy cập bằng Java WebStart, sẽ tự động cập nhật chương trình và mọi tệp jar cần thiết khác lên phiên bản mới nhất, chỉ tải xuống các tệp jar đã thay đổi. 
- Các tệp được đọc và ghi dưới dạng big endian trên tất cả các nền tảng (là thứ tự byte mạng) đảm bảo rằng giao tiếp giữa các chương trình java và tải tệp không bao giờ yêu cầu hoán đổi thứ tự byte (trừ khi nói chuyện với chương trình không phải java hoặc sử dụng tệp được viết bởi một).
Nhược điểm: 
- Trình thu gom rác sử dụng chu kỳ và bộ nhớ CPU - (nhưng hầu như không có, ít nhất là thời gian CPU) 
- Java không cho phép người lập chỉ mục hoặc toán tử trên các đối tượng, ví dụ: nếu bạn sử dụng danh sách có thể thay đổi kích thước, v.v., bạn phải thực hiện list.get (index) thay vì list [index] và bạn không thể thực hiện someVector + someOtherVector. 
- Thư viện của Java khá nặng: Các tệp Jar được sử dụng bởi java webstart phải được ký bằng chứng chỉ. Chứng chỉ ký mã có giá hàng trăm đô la mỗi năm hoặc bạn có thể tự tạo một ký tự và sử dụng nó, điều này sẽ khiến Java Webstart bật lên hộp thoại "Chứng nhận này không thể được xác minh" khi người dùng cố chạy chương trình. 
- Yêu cầu JRE được cài đặt để chạy chương trình, tải xuống mất thời gian lên đến vài tiếng.
- Không mạnh về Window.
- Máy ảo Java có thể chiếm nhiều bộ nhớ.
- Tương tác với Database cần fải có thư viện riêng.

1.2.1.2 Giới thiệu Spring framword
Spring là gì: 
-	Java Spring framework là một framework nhẹ, phổ biến nhất và nó là một nền tảng Java mã nguồn mở. Nó là một khung Java EE được sử dụng rộng rãi. Về cơ bản, Spring Framework hoạt động dựa trên hai nguyên tắc thiết kế, tức là Dependency Injection và Aspect-Oriented Programming.
-	Các tính năng cốt lõi của Spring được sử dụng để phát triển bất kỳ loại ứng dụng Java nào một cách dễ dàng và nhanh chóng. Nó thúc đẩy thực hành tốt về lập trình bằng cách cho phép mô hình lập trình dựa trên POJO.
Ưu điểm: 
-	Spring framework là đối tượng Java cũ thuần túy (một đối tượng Java bình thường, không bị ràng buộc bởi bất kỳ hạn chế đặc biệt nào). Các nhà phát triển gọi đây là POJO. Lý do điều này rất có lợi vì nó có nghĩa là các nhà phát triển không phải sử dụng máy chủ hoặc bất kỳ vùng chứa doanh nghiệp nào khác. Điều này làm cho toàn bộ khung cực kỳ nhẹ, đây là một lợi thế đáng kể khi phát triển các ứng dụng web.
-	 Cấu hình linh hoạt – Nhà phát triển có thể tùy chọn để chọn chú thích dựa trên XML hoặc Java cho mục đích cấu hình. Việc có một tùy chọn như vậy làm cho công việc của các nhà phát triển đơn giản hơn rất nhiều.
-	 Giải quyết khó khăn phát triển ứng dụng Doanh nghiệp – Spring đang giải quyết những khó khăn khi phát triển các ứng dụng phức tạp, nó cung cấp Spring Core, Spring IoC và Spring AOP để tích hợp các thành phần khác nhau của các ứng dụng kinh doanh.
-	 Kiểm tra dễ dàng hơn – Việc sử dụng Spring Container để phát triển và chạy các trường hợp thử nghiệm bên ngoài vùng chứa doanh nghiệp, giúp việc thử nghiệm dễ dàng hơn nhiều.
Nhược điểm:
-	Độ phức tạp – Khung công tác Spring có rất nhiều biến và phức tạp. Do đó, bạn chỉ nên sử dụng nó nếu bạn có một đội ngũ lập trình viên có kinh nghiệm đã sử dụng framework này trước đó. Learning curve của bạn sẽ khó khăn, vì vậy nếu bạn hoặc nhóm của bạn không có nhiều kinh nghiệm phát triển, tốt hơn là bạn nên cân nhắc việc sử dụng nó.
-	 Cơ chế song song – Một trong những ưu điểm lớn nhất của Spring là nó cung cấp cho các nhà phát triển nhiều lựa chọn, nhưng đây cũng có thể là một nhược điểm vì nó gây ra sự nhầm lẫn. Các nhà phát triển phải biết tính năng nào sẽ hữu ích và việc đưa ra quyết định sai lầm có thể dẫn đến sự chậm trễ đáng kể.
-	Không có nguyên tắc cụ thể – Trong tài liệu Spring không đề cập tới việc đối phó với các mối đe dọa như XSS hoặc giả mạo yêu cầu trên nhiều trang web. Với suy nghĩ này, bạn và nhóm của bạn sẽ cần phải tự tìm ra cách ngăn chặn tin tặc xâm nhập vào ứng dụng của bạn.

1.2.1.3 Mô hình MVC
- 	MVC là viết tắt của Model - View - Controller, mô hình phần mềm này được tạo ra với mục đích xây dựng và quản lý dự án phần mềm có hệ thống hơn. Mô hình này được dùng khá rộng rãi và đặc biệt là trong các ngôn ngữ lập trình website. Hiện nay có khá nhiều Framework và tất cả đều được xây dựng từ mô hình MVC.
 
Hình 1. 1: Mô hình MVC
Trong mô hình này thì: 
• Model: có nhiệm vụ thao tác với cơ sở dữ liệu, nó sẽ chứa tất cả các hàm, các phương thức truy vấn trực tiếp với dữ liệu và controller sẽ thông qua các hàm, phương thức đó để lấy dữ liệu rồi gửi qua View. 
• View: có nhiệm vụ tiếp nhận dữ liệu từ controller và hiển thị nội dung sang các đoạn HTML, có thể hiểu đây là thành phần giao diện, nó đảm nhiệm nhiệm vụ hiển thị dữ liệu và giúp người dùng tương tác với hệ thống. 
• Controller: đóng vai trò là trung gian giữa Model và View. Là nơi tiếp nhận những yêu cầu xử lý được gửi từ người dùng, nó sẽ gồm những class/ function xử lý nhiều nghiệp vụ logic giúp lấy đúng dữ liệu thông tin cần thiết nhờ các nghiệp vụ lớp Model cung cấp và hiển thị dữ liệu đó ra cho người dùng nhờ lớp View.
 
Hình 1. 2: Sự tương tác giữa các thành phần trong MVC
Sự tương tác giữa các thành phần: 
• Controller tương tác với qua lại với View 
• Controller tương tác qua lại với Model 
• Model và View tương tác với nhau thông qua Controller chứ không tương tác trực tiếp với nhau.
1.2.2 Hệ quản trị MySQL
1.2.2.1 MySQL là gì
MySQL là một hệ thống quản trị cơ sở dữ liệu mã nguồn mở (gọi tắt là RDBMS) hoạt động theo mô hình client-server. Với RDBMS là viết tắt 15 của Relational Database Management System. MySQL được tích hợp apache, PHP. MySQL quản lý dữ liệu thông qua các cơ sở dữ liệu. Mỗi cơ sở dữ liệu có thể có nhiều bảng quan hệ chứa dữ liệu. MySQL cũng có cùng một cách truy xuất và mã lệnh tương tự với ngôn ngữ SQL. Vì MySQL là cơ sở dữ liệu tốc độ cao, ổn định và dễ sử dụng, có tính khả chuyển, hoạt động trên nhiều hệ điều hành cung cấp một hệ thống các hàm tiện ích rất mạnh. Với tốc độ và tính bảo mật cao. MySQL miễn phí hoàn toàn và có nhiều phiên bản cho các hệ điều hành khác nhau: Windows, Linux, MacOS, v.v MySQL là một trong những ví dụ rất cơ bản về hệ quản trị cơ sở dữ liệu quan hệ sử dụng ngôn ngữ truy vấn có cấu trúc (SQL).
1.2.2.2	Ưu nhược điểm của MySQL
Ưu điểm 
- Dễ sử dụng: MySQL là cơ sở dữ liệu tốc độ cao, ổn định, dễ sử dụng và hoạt động trên nhiều hệ điều hành cung cấp một hệ thống lớn các hàm tiện ích rất mạnh. 
- Độ bảo mật cao: MySQL rất thích hợp cho các ứng dụng có truy cập CSDL trên Internet khi sở hữu nhiều nhiều tính năng bảo mật thậm chí là ở cấp cao. 
- Đa tính năng: MySQL hỗ trợ rất nhiều chức năng SQL được mong chờ từ một hệ quản trị cơ sở dữ liệu quan hệ cả trực tiếp lẫn gián tiếp. 
- Khả năng mở rộng và mạnh mẽ: MySQL có thể xử lý rất nhiều dữ liệu và hơn thế nữa nó có thể được mở rộng nếu cần thiết. 
- Nhanh chóng: Việc đưa ra một số tiêu chuẩn cho phép MySQL để làm việc rất hiệu quả và tiết kiệm chi phí, do đó nó làm tăng tốc độ thực thi. 
Nhược điểm 
- Giới hạn: Theo thiết kế, MySQL không có ý định làm tất cả và nó đi kèm với các hạn chế về chức năng mà một vào ứng dụng có thể cần.
- Độ tin cậy: Cách các chức năng cụ thể được xử lý với MySQL (ví dụ tài liệu tham khảo, các giao dịch, kiểm toán, v.v) làm cho nó kém tin cậy hơn so với một số hệ quản trị cơ sở dữ liệu quan hệ khác. 
- Dung lượng hạn chế: Nếu số bản ghi của bạn lớn dần lên thì việc truy xuất dữ liệu của bạn là khá khó khăn, khi đó chúng ta sẽ phải áp dụng nhiều biện pháp để tăng tốc độ truy xuất dữ liệu như là chia tải database này ra nhiều server, hoặc tạo cache MySQL.

CHƯƠNG 2: PHÂN TÍCH THIẾT KẾ HỆ THỐNG
2.1. Xây dựng biểu đồ Use Case (Use Case)
2.1.1 Xác định tác nhân của hệ thống
	Trong hệ thống có các tác nhân:
•	Người quản lý (NQL)
•	Nhân viên (NV)
•	Khách hàng (KH)
2.1.2. Xác định các quyền sử dụng của hệ thống

Tác nhân	Ca sử dụng
Người quản lý
(Có đầy đủ use case của nhân viên)	Quản lý khách hàng (thêm, sửa xóa, tìm kiếm)
	Quản lý báo cáo thống kê
Nhân viên	Quản lý tin tức (thêm, sửa xóa, tìm kiếm)
	Quản lý hãng sản xuất (thêm, sửa, xóa, tìm kiếm)
	Quản lý sản phẩm (thêm, sửa, xóa, tìm kiếm)
	Quản lý bình luận (xem , xóa)
	Quản lý đơn hàng (thêm, sửa xóa, tìm kiếm)
Khách hàng	Xem thông tin mặt hàng
	Tìm kiếm sản phẩm
	Bình luận sản phẩm
	Đặt hàng
Bảng 2. 1: các quyền sử dụng của hệ thống


Biểu đồ Use Case tổng quan :
 
Hình 2. 1: Biểu đồ use case tổng quan
2.2. Chi tiết các Use Case 
2.2.1. Use Case Quản lý Tài Khoản 
Biểu đồ use case quản lí Tài khoản 
Hình 2. 2: biểu đồ use case quản lý tài khoản
2.2.1.1. Đặc tả Use Case
	Tên use case: Quản lý tài khoản
	Tác nhân: NQL
	Mô tả vắn tắt:
Use case này cho phép NQL xem, thêm, sửa và xóa thông tin các tài khoản trong bảng USER
	Luồng sự kiện
Luồng cơ bản
1)	Use case này bắt đầu khi NQL kích vào mục “Quản lý tài khoản” trên menu chính. Hệ thống lấy thông tin chi tiết của các tài khoản (mã tài khoản, tên tài khoản, địa chỉ, số điện thoại…) của các tài khoản từ bảng USER trong cơ sở dữ liệu (CSDL) và hiển thị lên màn hình cùng với các lựa chọn thêm, sửa, xóa tài khoản.
2)	Tìm kiếm tài khoản
a.	NQL nhập từ khóa vào textbox tìm kiếm. 
b.	NQL kích vào nút “Tìm kiếm”. Hệ thống lấy thông tin từ bảng USER dựa theo các từ khóa đã nhập và hiển thị kết quả lên màn hình.
3)	Thêm tài khoản
a. NQL kích vào nút “Thêm mới”. Hệ thống hiển thị màn hình yêu cầu nhập thông tin chi tiết (như mô tả ở trên) của tài khoản.
b. NQL nhập thông tin cho tài khoản mới và kích vào nút “Lưu”. Hệ thống lưu thông tin tài khoản mới vào bảng USER và hiển thị lại danh sách tài khoản được cập nhật.
4) Sửa tài khoản
a. NQL chọn một tài khoản muốn sửa và kích vào nút “Sửa”. Hệ thống hiển thị màn hình với thông tin cũ của tài khoản trong các textbox.
b. NQL nhập thông tin mới cho tài khoản và kích vào nút “Lưu”. Hệ thống cập nhật thông tin tài khoản vào bảng USER và hiển thị lại danh sách các tài khoản được cập nhật.
5) Xóa tài khoản.
a. NQL chọn một tài khoản muốn xóa và kích vào nút “Xóa”. Hệ thống hiển thị màn hình yêu cầu xác nhận xóa.
b. NQL kích nút “Đồng ý”. Hệ thống xóa tài khoản khỏi bảng USER,  hiển thị thông báo đã xóa thành công tài khoản và hiển thị lại danh sách các tài khoản được cập nhật.
c. NQL muốn đổi mật khẩu có thể kích vào nút đổi mật khẩu để đổi mật khẩu cho tài khoản.
Use case kết thúc.	
Luồng rẽ nhánh
1) Tại bước 2b hoặc 3b trong luồng cơ bản, khi người quản trị kích nút “Quay lại” hệ thống sẽ bỏ qua thao tác thêm mới hoặc sửa tài khoản và hiển thị danh sách thông tin chi tiết của các tài khoản từ bảng USER cùng với các lựa chọn thêm tài khoản, sửa tài khoản, xóa tài khoản.
2) Tại bước 2b trong luồng cơ bản, khi không thêm được bản ghi mới vào bảng USER. Hệ thống hiển thị thông báo lỗi và quay lại bước 1
3) Tại bất kỳ thời điểm nào trong quá trình thực hiện use case nếu không kết nối được với cơ sở dữ liệu thì hệ thống sẽ hiển thị một thông báo lỗi và use case kết thúc.
	Yêu cầu đặc biệt
	Không có.
	Tiền điều kiện
	NQL phải đăng nhập thành công

	Hậu điều kiện
	 Thông tin được lưu vào bảng USER
2.2.1.2. Biểu đồ lớp tham gia Use Case
 
Hình 2. 3: Biểu đồ lớp tham gia Use Case Quản lý tài khoản
2.2.1.3. Biểu đồ tuần tự Use Case Quản lý tài khoản
 
 
Hình 2. 4: Biểu đồ tuần tự Use case quản lý tài khoản
2.2.2. Use Case Quản lý Sản phẩm
Biểu đồ Use Case quản lí sản phẩm
 
Hình 2. 5: Biểu đồ Use Case quản lí sản phẩm
2.2.2.1. Đặc tả Use Case
	Tên use case: Quản lý sản phẩm
	Tác nhân: NQL, NV
	Mô tả vắn tắt:
Use case này cho phép NQL, NV xem, thêm, sửa và xóa thông tin các sản phẩm trong bảng PRODUCT
	Luồng sự kiện
Luồng cơ bản
1) Use case này bắt đầu khi NQL, NV kích vào mục “Quản lý sản phẩm” trên menu chính. Hệ thống lấy thông tin chi tiết của các sản phẩm (mã sản phẩm, tên sản phẩm, hình ảnh, …) của các sản phẩm từ bảng PRODUCT trong CSDL và hiển thị lên màn hình cùng với các lựa chọn thêm sản phẩm, sửa sản phẩm, xóa sản phẩm.
2) Tìm kiếm sản phẩm
a. NQL, NV nhập từ khóa vào textbox tìm kiếm. 
b. NQL, NV kích vào nút “Tìm kiếm”. Hệ thống lấy thông tin từ bảng PRODUCT dựa theo các từ khóa đã nhập và hiển thị kết quả lên màn hình.
3) Thêm sản phẩm
a. NQL, NV kích vào nút “Thêm mới”. Hệ thống hiển thị màn hình yêu cầu nhập thông tin chi tiết (như mô tả ở trên) của sản phẩm.
b. NQL, NV nhập thông tin cho sản phẩm mới và kích vào nút “Lưu”. Hệ thống lưu thông tin sản phẩm mới vào bảng PRODUCT và hiển thị lại danh sách sản phẩm được cập nhật.
4) Sửa sản phẩm
a. NQL, NV chọn một sản phẩm muốn sửa và kích vào nút “Sửa”. Hệ thống hiển thị màn hình với thông tin cũ của sản phẩm trong các textbox.
b. NQL, NV nhập thông tin mới cho sản phẩm và kích vào nút “Lưu”. Hệ thống cập nhật thông tin sản phẩm vào bảng PRODUCT và hiển thị lại danh sách các sản phẩm được cập nhật.
5) Xóa sản phẩm.
a. NQL, NV chọn một sản phẩm muốn xóa và kích vào nút “Xóa”. Hệ thống hiển thị màn hình yêu cầu xác nhận xóa.
b. NQL, NV kích nút “Đồng ý”. Hệ thống xóa sản phẩm khỏi bảng PRODUCT, hiển thị thông báo đã xóa thành công sản phẩm và hiển thị lại danh sách các sản phẩm được cập nhật.
6) Use case kết thúc.	
Luồng rẽ nhánh
1) Tại bước 2b hoặc 3b trong luồng cơ bản, khi người quản trị kích nút “Quay lại” hệ thống sẽ bỏ qua thao tác thêm mới hoặc sửa sản phẩm và hiển thị danh sách thông tin chi tiết của các sản phẩm từ bảng PRODUCT cùng với các lựa chọn thêm sản phẩm, sửa sản phẩm, xóa sản phẩm.
2) Tại bước 2b trong luồng cơ bản, khi không thêm được bản ghi mới vào bảng PRODUCT. Hệ thống hiển thị thông báo lỗi và quay lại bước 1
3) Tại bất kỳ thời điểm nào trong quá trình thực hiện use case nếu không kết nối được với cơ sở dữ liệu thì hệ thống sẽ hiển thị một thông báo lỗi và use case kết thúc.
	Các yêu cầu đặc biệt 
	Không có.
	Tiền điều kiện
	NQL, NV phải đăng nhập thành công
	Hậu điều kiện
	 Thông tin được lưu vào bảng PRODUCT
2.2.2.2. Biểu đồ lớp tham gia Use Case
 
Hình 2. 6: Biểu đồ lớp tham gia Use Case Quản lý sản phẩm
2.2.2.3. Biểu đồ tuần tự Use Case
 
Hình 2. 7: Biểu đồ tuần tự Use Case Quản lý sản phẩm
2.2.3. Use Case Quản lý Bình Luận
Biểu đồ Use Case quản lí bình luận
 
Hình 2. 8: Biểu đồ Use Case quản lí bình luận
2.2.3.1. Đặc tả Use Case
	Tên use case: Quản lý bình luận
	Tác nhân: NQL, NV
	Mô tả vắn tắt:
Use case này cho phép NQL, NV xem các bình luận theo sản phẩm có trong bảng USER
	Luồng sự kiện
Luồng cơ bản
1) Use case này bắt đầu khi NQL, NV  kích vào mục “Xem bình luận” trên mục xem chi tiết sản phẩm. Hệ thống lấy thông tin chi tiết của bình luận (mã bình luận, tên khách hàng, nội dung …) của các bình luận từ bảng COMMENT trong CSDL và hiển thị lên màn hình.
2) Xóa bình luận
a. NQL, NV chọn một bình luận muốn xóa và kích vào nút “Xóa”. Hệ thống hiển thị màn hình yêu cầu xác nhận xóa.
b. NQL, NV kích nút “Đồng ý”. Hệ thống xóa bình luận khỏi bảng COMMENT, hiển thị thông báo đã xóa thành công bình luận và hiển thị lại danh sách các bình luận được cập nhật.
3) Use case kết thúc.	
Luồng rẽ nhánh
Tại bất kỳ thời điểm nào trong quá trình thực hiện use case nếu không kết nối được với cơ sở dữ liệu thì hệ thống sẽ hiển thị một thông báo lỗi và use case kết thúc.
	Các yêu cầu đặc biệt 
	Không có.
	Tiền điều kiện
	NQL, NV phải đăng nhập thành công
	Hậu điều kiện
	 Không có.
2.2.3.2. Biểu đồ lớp tham gia Use Case
 
Hình 2. 9: Biểu đồ lớp tham gia Use Case quản lý bình luận

2.2.3.3. Biểu đồ tuần tự
 
Hình 2. 10: Biểu đồ tuần tự Use Case quản lý bình luận
2.2.4. Use Case Quản lý hãng sản xuất
Use Case quản lý hãng sản xuất
 
Hình 2. 11: Biểu đồ Use Case quản lý hãng SX
2.2.4.1. Đặc tả
	Tên use case: Quản lý hãng sản xuất
	Tác nhân: NQL, NV
	Mô tả vắn tắt:
Use case này cho phép NQL, NV xem, tìm kiếm, thêm, sửa và xóa thông tin các hãng sản xuất trong bảng PROVIDER
	Luồng sự kiện
Luồng cơ bản
1) Use case này bắt đầu khi NQL, NV kích vào mục “Quản lý hãng sản xuất” trên menu chính. Hệ thống lấy thông tin chi tiết của các sản phẩm (mã hãng sản xuất, tên hãng sản xuất, địa chỉ, …) của các sản phẩm từ bảng PROVIDER trong CSDL và hiển thị lên màn hình cùng với các lựa chọn thêm hãng sản xuất, sửa hãng sản xuất, xóa hãng sản xuất.
2) Tìm kiếm hãng sản xuất
a. NQL, NV nhập từ khóa vào textbox tìm kiếm. 
b. NQL, NV kích vào nút “Tìm kiếm”. Hệ thống lấy thông tin từ bảng PROVIDER dựa theo các từ khóa đã nhập và hiển thị kết quả lên màn hình.
3) Thêm hãng sản xuất
a. NQL, NV kích vào nút “Thêm mới”. Hệ thống hiển thị màn hình yêu cầu nhập thông tin chi tiết (như mô tả ở trên) của hãng sản xuất.
b. NQL, NV nhập thông tin cho hãng sản xuất mới và kích vào nút “Lưu”. Hệ thống lưu thông tin hãng sản xuất mới vào bảng PROVIDER và hiển thị lại danh sách hãng sản xuất được cập nhật.
4) Sửa hãng sản xuất
a. NQL, NV chọn một hãng sản xuất muốn sửa và kích vào nút “Sửa”. Hệ thống hiển thị màn hình với thông tin cũ của hãng sản xuất trong các textbox.
b. NQL, NV nhập thông tin mới cho hãng sản xuất và kích vào nút “Lưu”. Hệ thống cập nhật thông tin hãng sản xuất vào bảng PROVIDER và hiển thị lại danh sách các hãng sản xuất được cập nhật.
5) Xóa hãng sản xuất.
a. NQL, NV chọn một hãng sản xuất muốn xóa và kích vào nút “Xóa”. Hệ thống hiển thị màn hình yêu cầu xác nhận xóa.
b. NQL, NV kích nút “Đồng ý”. Hệ thống xóa hãng sản xuất khỏi bảng PROVIDER, hiển thị thông báo đã xóa thành công hãng sản xuất và hiển thị lại danh sách các hãng sản xuất được cập nhật.
Use case kết thúc.	
Luồng rẽ nhánh
1) Tại bước 2b hoặc 3b trong luồng cơ bản, khi người quản trị kích nút “Quay lại” hệ thống sẽ bỏ qua thao tác thêm mới hoặc sửa hãng sản xuất và hiển thị danh sách thông tin chi tiết của các hãng sản xuất từ bảng 
2) Tại bước 2b trong luồng cơ bản, khi không thêm được bản ghi mới vào bảng PROVIDER. Hệ thống hiển thị thông báo lỗi và quay lại bước 1
3) Tại bất kỳ thời điểm nào trong quá trình thực hiện use case nếu không kết nối được với cơ sở dữ liệu thì hệ thống sẽ hiển thị một thông báo lỗi và use case kết thúc.
	Các yêu cầu đặc biệt 
	Không có.
	Tiền điều kiện
	NQL phải đăng nhập thành công
	Hậu điều kiện
	 Thông tin được lưu vào bảng PROVIDER 
2.2.4.2. Biểu đồ lớp tham gia Use Case
 
Hình 2. 12: Biểu đồ lớp tham gia Use Case quản lý hãng sản xuất
2.2.4.3. Biểu đồ tuần tự
 
Hình 2. 13: Biểu đồ tuần tự Use Case quản lý hãng sản xuất
2.2.5. Use Case Quản lý đơn hàng
Biểu đồ Use Case quản lí đơn hàng
 
Hình 2. 14: Biểu đồ Use Case quản lí đơn hàng
2.2.5.1. Đặc tả Use Case
	Tên use case: Quản lý đơn hàng
	Tác nhân: NQL, NV
	Mô tả vắn tắt:
Use case này cho phép NQL, NV xem, tìm kiếm, duyệt, xóa thông tin đơn hàng trong bảng BILLS và xem thông tin chi tiết đơn hàng trong bảng BILL_DETAIL
	Luồng sự kiện
Luồng cơ bản
1) Use case này bắt đầu khi NQL, NV kích vào mục “Quản lý đơn hàng” trên menu chính. Hệ thống lấy thông tin chi tiết của các đơn hàng (mã đơn hàng, địa chỉ, tên người nhận, tổng tiền, …) của các sản phẩm từ bảng BILLS trong CSDL và hiển thị lên màn hình cùng với các lựa chọn duyệt đơn hàng, xóa đơn hàng, xem chi tiết đơn hàng.
 2) Tìm kiếm đơn hàng.
a. NQL, NV nhập từ khóa vào textbox tìm kiếm. 
b. NQL, NV kích vào nút “Tìm kiếm”. Hệ thống lấy thông tin từ bảng BILLS dựa theo các từ khóa đã nhập và hiển thị kết quả lên màn hình.
3) Xem chi tiết đơn hàng
NQL, NV chọn một đơn hàng muốn xem và kích vào nút “Xem”. Hệ thống hiển thị màn hình với thông tin chi tiết của đơn hàng trong một bảng.
4) Duyệt đơn hàng 
a. NQL, NV chọn một đơn hàng muốn duyệt và kích vào nút “Duyệt”. 
b. Hệ thống cập nhật trạng thái đơn hàng vào bảng BILLS và hiển thị lại danh sách các đơn hàng.
5) Xóa đơn hàng.
a. NQL, NV chọn một đơn hàng muốn xóa và kích vào nút “Xóa”. Hệ thống hiển thị màn hình yêu cầu xác nhận xóa.
b. NQL, NV kích nút “Đồng ý”. Hệ thống xóa đơn hàng khỏi bảng BILLS, hiển thị thông báo đã xóa thành công đơn hàng và hiển thị lại danh sách các đơn hàng.
6) Use case kết thúc.	
Luồng rẽ nhánh
Tại bất kỳ thời điểm nào trong quá trình thực hiện use case nếu không kết nối được với cơ sở dữ liệu thì hệ thống sẽ hiển thị một thông báo lỗi và use case kết thúc.
	Các yêu cầu đặc biệt 
	Không có.
	Tiền điều kiện
	NQL, NV phải đăng nhập thành công

	Hậu điều kiện
	 Thông tin được lưu vào bảng BILLS
2.2.5.2. Biểu đồ lớp tham gia Use Case
 
Hình 2. 15: Biểu đồ lớp tham gia Use Case quản lý đơn hàng
2.2.5.3. Biểu đồ tuần tự
	 
Hình 2. 16: Biểu đồ tuần tự Use Case quản lý đơn hàng
2.2.6. Use Case Quản lý tin tức
Biểu đồ Use Case quản lí tin tức
 
Hình 2. 17: Biểu đồ Use Case quản lí tin tức
2.2.6.1. Đặc tả Use Case
	Tên use case: Quản lý tin tức
	Tác nhân: NQL, NV
	Mô tả vắn tắt:
Use case này cho phép NQL, NV xem, tìm kiếm, duyệt, xóa thông tin tin tức trong bảng NEWS
	Luồng sự kiện
Luồng cơ bản
1) Use case này bắt đầu khi NQL, NV kích vào mục “Quản lý tin tức” trên menu chính. Hệ thống lấy thông tin chi tiết của các tin tức (mã tin tức, tiêu đề, hình ảnh, nội dung …) của các sản phẩm từ bảng NEWS trong CSDL và hiển thị lên màn hình cùng với các lựa chọn duyệt đơn hàng, xóa đơn hàng, xem chi tiết đơn hàng.
 2) Tìm kiếm tin tức.
a. NQL, NV nhập từ khóa vào textbox tìm kiếm. 
b. NQL, NV kích vào nút “Tìm kiếm”. Hệ thống lấy thông tin từ bảng NEWS dựa theo các từ khóa đã nhập và hiển thị kết quả lên màn hình.
3) Xem chi tiết tin tức
NQL, NV chọn một đơn hàng muốn xem và kích vào nút “Xem”. Hệ thống hiển thị màn hình với thông tin chi tiết của đơn hàng trong một bảng.
4) Sửa tin tức
a. NQL chọn một tin tức muốn sửa và kích vào nút “Sửa”. Hệ thống hiển thị màn hình với thông tin cũ của môn học trong các textbox.
b. NQL nhập thông tin mới cho tin tức và kích vào nút “Lưu”. Hệ thống cập nhật thông tin tin tức vào bảng NEWS và hiển thị lại danh sách các tin tức được cập nhật.
5) Xóa tin tức.
a. NQL, NV chọn một tin tức muốn xóa và kích vào nút “Xóa”. Hệ thống hiển thị màn hình yêu cầu xác nhận xóa.
b. NQL, NV kích nút “Đồng ý”. Hệ thống xóa tin tức khỏi bảng NEWS, hiển thị thông báo đã xóa thành công tin tức và hiển thị lại danh sách các tin tức.
6) Use case kết thúc.	
Luồng rẽ nhánh
Tại bất kỳ thời điểm nào trong quá trình thực hiện use case nếu không kết nối được với cơ sở dữ liệu thì hệ thống sẽ hiển thị một thông báo lỗi và use case kết thúc.
	Các yêu cầu đặc biệt 
	Không có.
	Tiền điều kiện
	NQL, NV phải đăng nhập thành công
	Hậu điều kiện
	 Thông tin được lưu vào bảng NEWS
2.2.6.2. Biểu đồ lớp tham gia Use Case
 
Hình 2. 18: Biểu đồ lớp tham gia Use Case quản lý tin tức
2.2.6.3. Biểu đồ tuần tự
	 
Hình 2. 19: Biểu đồ tuần tự Use Case quản lý tin tức
2.2.7. Use Case đăng nhập
Mô tả vắn tắt use case: Use case này cho phép người dùng tham gia vào hệ thống để sử dụng các chức năng yêu cầu quyền người dùng.
•	Luồng sự kiện: 
Luồng cơ bản
1.	Use này bắt đầu khi quản trị chọn “Đăng nhập” trên giao diện. Hệ thống sẽ hiển thị màn hình gồm các trường gồm: tên đăng nhập, mật khẩu lên màn hình.
2.	Người dùng nhập thông tin và kích nút “Đăng nhập” trong màn hình đăng nhập. Hệ thống truy xuất vào bảng User xác thực tài khoản. Hiển thị giao diện quản trị hoặc giao diện người dùng phụ thuộc vào quyền tài khoản
3.	Use case kết thúc.
Luồng rẽ nhánh
1.	Không kết nối được với CSDL: Tại bất kỳ thời điểm nào trong quá trình thực hiện use case nếu không kết nối được với CSDL thì hệ thống sẽ hiển thị một thông báo lỗi và use case kết thúc.
•	Tiền điều kiện:  Khách hàng có tài khoản trên hệ thống
Hậu điều kiện: Đăng nhập thành công và sử dụng các chức năng của hệ thống.
2.2.8. Use Case đăng xuất
Mô tả vắn tắt use case: Use case này cho phép người đăng xuất khỏi tài khoản đang dùng
•	Luồng sự kiện: 
Luồng cơ bản
1.  	 Use này bắt đầu khi quản trị chọn “Đăng xuất” trên giao diện. Hệ thống sẽ hiển thị màn hình gồm các trường gồm: tên đăng nhập, mật khẩu lên màn hình.
2. 	Use case kết thúc.
Luồng rẽ nhánh
Không kết nối được với CSDL: Tại bất kỳ thời điểm nào trong quá trình thực hiện use case nếu không kết nối được với CSDL thì hệ thống sẽ hiển thị một thông báo lỗi và use case kết thúc.
•	Tiền điều kiện:  Khách hàng có tài khoản trên hệ thống
Hậu điều kiện: Đăng xuất thành công 
2.2.9. Use Cace đặt hàng
Mô tả vắn tắt use case: Use case này cho phép khách hàng mua hàng trong giỏ hàng của mình.
•	Luồng sự kiện: 
o	Luồng cơ bản:
1.	Use này bắt đầu khi khách hàng chọn “Đặt hàng” trong giỏ hàng. Hệ thống kiểm tra thông tin sản phẩm, kiểm tra thông tin người dùng trên giao diện (họ tên, giới tính, email, số điện thoại, ghi chú, …) lưu thông tin đơn hàng vào bảng BILLS và BILL_DETAIL, hiển thị màn hình hoàn thành.
2.	Use case kết thúc.
o	Luồng rẽ nhánh:
1.	Tại bước 1 trong luồng cơ bản: Nếu giỏ hàng không có sản phẩm, hệ thống không cho phép đặt hàng; Nếu không nhập: họ tên, email, số điện thoại, … khi chọn “Đặt hàng”, hệ thống sẽ thông báo lỗi chưa nhập đủ thông tin.

2.	Không kết nối được với CSDL: Tại bất kỳ thời điểm nào trong quá trình thực hiện use case nếu không kết nối được với CSDL thì hệ thống sẽ hiển thị một thông báo lỗi và use case kết thúc.
•	Tiền điều kiện:  Giỏ hàng có ít nhất một sản phẩm.
Hậu điều kiện: Tạo đơn hàng thành công, khách hàng theo dõi đơn hàng của mình. Cập nhật thông tin vào bảng BILLS và BILL_DETAIL.

 
CHƯƠNG 3: THIẾT KẾ DỮ LIỆU VÀ CÀI ĐẶT CHƯƠNG TRÌNH
3.1 Thiết kê hệ thống
 
Hình 3. 1: Thiêt kế database hệ thống
Các lớp của bài toán:
o	Lớp Người sử dụng
o	Lớp Sản phẩm
o	Lớp Hãng sản xuất
o	Lớp Đơn hàng
o	Lớp Chi tiết đơn hàng
o	Lớp Tin tức
o	Lớp Bình luận
3.1.1 Lớp Người sử dụng (User)


STT	Tên thuộc tính	Mô tả	Kiểu dữ liệu	Ghi chú
1	User_id	Mã người dùng	Int	Khóa chính 
(Tự động tăng)
2	Username	Tên đăng nhập	Varchar (255)	
3	Password	Mật khẩu	Varchar (50)	
4	Email	Email	Varchar (255)	
5	Phone	SĐT	Number	
6	Address	Địa chỉ 	Varchar (255)	
7	Last_name	Họ	Varchar (50)	
8	First_name	Tên	Varchar (50)	
9	Status	Trạng thái	Boolean	
10	Role	Quyền	Int	
Bảng 3. 1: Lớp người sử dụng


3.1.2 Lớp Sản phẩm (Product)
STT	Mã thuộc tính	Tên thuộc tính	Kiểu dữ liệu	Ghi chú
1	Id	Mã sản phầm	Int	Khóa chính 
(Tự động tăng)
2	Id_prodvider	Mã hãng sản xuất	int	
3	Name	Tên sản phẩm	Varchar (255)	
4	Price	Đơn giá	Double	
5	Sale	Giảm giá 	Int	
6	Title	Tiêu đề	Varchar (255)	
7	Detail	Nội dung chi tiết	Text	
8	OS	Hệ điều hành	Varchar (255)	
9	CPU	Vi sử lý	Varchar (255)	
10	Screen	Màn hình	Varchar (255)	
11	Size	Kích cỡ	Varchar (255)	
12	Weight	Cân nặng	Varchar (255)	
13	Waterproof	Tính năng	Varchar (255)	
14	Mic	Mic đàm thoại	Varchar (255)	
15	Pin		Varchar (255)	
16	Strap	Dây đeo	Varchar (255)	
17	SoLuong	Số lượng còn 	int	
18	DaBan	Số lượng đã bán	int	
19	Img	Hình ảnh	Varchar (255)	
20	Create date	Ngày tạo	Datetime	
21	Create by	Tạo bởi	Varchar (255)	
22	Update date	Ngày cập nhật	Datetime	
23	Update by	Người cập nhật	Varchar (255)	
Bảng 3. 2: Lớp sản phẩm
3.1.3 Lớp Hãng sản xuất (Provider)
STT	Mã thuộc tính	Tên thuộc tính	Kiểu dữ liệu	Ghi chú
1	Id	Mã hãng sx	Int	Khóa chính 
(Tự động tăng)
2	Name	Tên hãng sx	Varchar (255)	
3	Description	Miêu tả	Varchar (255)	
Bảng 3. 3: Lớp hãng sản xuất
3.1.4 Lớp Đơn hàng (Bills)
STT	Mã thuộc tính	Tên thuộc tính	Kiểu dữ liệu	Ghi chú
1	Id	Mã đơn hàng	Int	Khóa chính 
(Tự động tăng)
2	User	Tên người nhận	Varchar (255)	
3	Phone	Số điện thoại	BigInt	
4	Address	Địa chỉ	Varchar (255)	
5	Note	Ghi chú	Text	
6	Total	Tổng tiền	Double	
7	Quanty	Số lượng	Int	
8	Status	Trạng thái	Varchar (255)	
9	Payments	Kiểu thanh toán	Varchar (255)	
10	Id_user	Mã tài khoản đặt hàng	Int	
11	Create_date	Ngày tạo	Datetime	
12	Update_date	Ngày cập nhật	Datetime	
Bảng 3. 4: Lớp đơn hàng
3.1.5 Lớp Chi tiết đơn hàng (BillDetail)
STT	Mã thuộc tính	Tên thuộc tính	Kiểu dữ liệu	Ghi chú
1	Id	Mã chi tiết đơn hàng	Int	Khóa chính 
(Tự động tăng)
2	Id_product	Mã sản phẩm	Int	
3	Id_bills	Mã đơn hàng	Int	
4	Quanty	Số lượng	Int	
5	Total	Tổng tiền	Double	
Bảng 3. 5: Lớp chi tiết đơn hàng
3.1.6	Lớp Tin tức (News)
STT	Mã thuộc tính	Tên thuộc tính	Kiểu dữ liệu	Ghi chú
1	Id	Mã tin tức	Int	Khóa chính 
(Tự động tăng)
2	Title	Tiêu đề	VarChar (255)	
3	Img	Hình ảnh	VarChar (255)	
4	Content	Nội dung	Text	
5	Create_date	Ngày tạo	Datetime	
6	Create_by	Người tạo	VarChar (255)	
7	Update_date	Ngày cập nhật	Datetime	
8	Update_by	Người cập nhật	VarChar (255)	
Bảng 3. 6: Lớp tin tức
3.1.7	Lớp Bình Luận (Comments)
STT	Mã thuộc tính	Tên thuộc tính	Kiểu dữ liệu	Ghi chú
1	Id	Mã bình luận	Int	Khóa chính 
(Tự động tăng)
2	Id_user	Mã người dùng	Int	
3	Id_product	Mã sản phẩm	Int	
4	Content	Nội dung	Text	
5	Create_date	Ngày tạo	Datetime	
Bảng 3. 7: Lớp bình luận
3.2 Cài đặt chường trình
3.2.1: Giao diện phía khách hàng
•	Trang chủ
Giao diện trang chủ của cửa hàng LdStore phân cấp các danh mục gồm có: Danh mục sản phẩm, Giới thiệu, Tất cả sản phẩm, Tin tức Smartwatch
 
Hình 3. 2: Giao diện trang chủ
		
 
•	Tất cả sản phẩm
Khi khách hàng chọn tất cả sản phẩm, hệ thống sẽ hiển thị danh sách tất cả các sản phẩm với các thông tin như tên sản phẩm, hình ảnh, giá tiền và khuyến mãi (nếu có). Khách hàng có thể lọc sản phẩm theo sản phẩm được mua nhiều nhất, sản phẩm mới nhất, theo giá từ thấp đến cao hoặc từ cao xuống thấp. 
 
Hình 3. 3: Giao diện trang tất cả sản phẩm
 
•	Sản phẩm theo danh mục
Khi khách hàng đưa con trỏ chuột vào danh mục sản phẩm, tại đây sẽ hiển thị tên các danh mục sản phẩm (hãng sản xuất). Sau khi chọn tên danh mục sản phẩm, hệ thống sẽ hiển thị danh sách các sản phẩm thuộc danh mục sản phẩm. Khác hàng cũng có các lựa chọn lọc giống như trang tất cả sản phẩm.
 
Hình 3. 4: Giao diện trang xem sản phẩm theo danh mục
•	Tìm kiếm
Khách hàng có thể tìm kiếm sản phẩm theo tên bằng cách điền tên sản phẩm cần tìm vào ô tìm kiếm, hệ thống sẽ hiển thị ra các sản phẩm có tên liên quan với tên mà khách hàng đã nhập. Tại trang tìm kiếm cũng có những lựa chọn lọc giống như trang tất cả sản phẩm và danh mục sản phẩm.
 
Hình 3. 5: Giao diện trang tìm kiếm
•	Chi tiết sản phẩm
Khi khách hàng kích chọn một sản phẩm, hệ thống sẽ hiển thị lên thông tin chi tiết của sản phẩm bao gồm tên sản phẩm, hãng sản xuất, ảnh, bài viết của sản phẩm, cấu hình, các bình luận của khách hàng khác. Ngoài ra, còn hiển thị các bài viết mới nhất và các sản phẩm liên quan đến sản phẩm đang hiển thị.
Khi khách hàng muốn mua sản phẩm, sẽ kích chọn thêm vào giỏ hàng để tiến hành mua sản phẩm
 
Hình 3. 6: Giao diện trang xem chi tiết sản phẩm
•	Bình luận sản phẩm
Khi khách hàng kích chọn mục bình luận, trang web sẽ hiển thị ra những bình luận về sản phẩm, khách hàng có thể bình luận về sản phẩm nếu đã đăng nhập.
 
Hình 3. 7: Giao diện trang bình luận sản phẩm
•	Đăng nhập
 
Hình 3. 8: Giao diện trang đăng nhập
•	Đăng ký
Giao diện đăng ký tài khoản, khách hàng cần nhập các thông tin cần thiết để đăng ký tài khoản. 
 
Hình 3. 9: Giao diện trang đăng ký
•	Giỏ hàng
Khi khách hàng kích chọn thêm sản phẩm vào giỏ hàng, giỏ hành sẽ hiển thị danh sách các sản phẩm được lựa chọn cùng với giá tiền, số lượng sản phẩm và tổng tiền.
 
Hình 3. 10: Giao diện trang giỏ hàng

•	Đặt hàng
Khi người dùng kích chọn nút tiến hành thanh toán, hệ thống sẽ chuyển hướng đến trang đặt hàng. Tại đây hệ thống sẽ hiển thị ra danh sách sản phẩm cùng với tổng tiền. Người dùng cần phải điền các thông tin như tên người nhận, số điện thoại người nhận, địa chỉ nhận và ghi chú( nếu cần ). Phương thức thanh toán mặc định của cửa hàng là thanh toán sau khi nhận được hàng.
 
Hình 3. 11: Giao diện trang đặt hàng
•	Thông tin tài khoản
Sau khi đăng nhập, người dùng có thể xem thông tin tài khoản, sửa thông tin, đổi mật khẩu, xem chi tiết đơn hàng đã mua. 
 
Hình 3. 12: Giao diện trang thông tin tài khoản
•	Đổi thông tin tài khoản 
Hình 3. 13: Giao diện trang đổi thông tin tài khoản
•	Đổi mật khẩu 
Hình 3. 14: Giao diện trang đổi mật khẩu
•	Xem tất cả đơn hàng
Khi khách hàng chọn đơn hàng, hệ thống sẽ hiên thị danh sách các đơn hàng của khách hàng.
 
Hình 3. 15: Giao diện trang đơn hàng
•	Chi tiết đơn hàng
Khi khách hàng chọn chi tiết, hệ thống sẽ hiển thị chi tiết đơn hàng của khách hàng, nếu đơn hàng đang trong trạng thái chờ, khách hàng có thể hủy đơn hàng nếu không muốn mua nữa. Nếu đơn hàng đang trong trạng thái đang giao hàng, khách hàng có thể kích chọn đã nhận được hàng nếu khách hàng đã nhận hàng thành công.
 
Hình 3. 16: Giao diện trang chi tiết đơn hàng
3.2.2: Giao diện phía quản trị
3.2.2.1: Đối với người quản trị
•	Trang đăng nhập
Người quản trị và nhận viên có thể truy cập vào giao diện quản trị sau khi đăng nhập thành công.
 
Hình 3. 17: Giao diện trang đăng nhập

•	Trang chủ (trang thống kê) 
Sau khi người quản trị đăng nhập thành công, hệ thống sẽ hiển thị lên trang chủ với các thông tin về sản phẩm, số khách hàng, sản phẩm đã bán, doanh thu, sản phẩm bán chạy.
Thống kê về số đơn hàng, số sản phẩm đã bán, doanh thu theo ngày, tuần, tháng, năm hoặc tất cả khi người quản trị lựa chọn.
 
Hình 3. 18: Giao diện trang thống kê


•	Quản lý sản phẩm 
Tại trang quản lý sản phẩm, người quản trị có thể tìm kiếm sản phẩm theo tên, mã sản phẩm, thêm mới sản phẩm, xem chi tiết, cập nhật hoặc xóa sản phẩm.
Người quản trị có thể quản lý các bình luận của sản phẩm khi chọn chi tiết sản phẩm.
 
Hình 3. 19: Giao diện trang quản lý sản phẩm


 
Hình 3. 20: Giao diện trang thêm sản phẩm

 
Hình 3. 21: Giao diện trang xem chi tiết sản phẩm
 
Hình 3. 22: Giao diện trang xem bài viết sản phẩm


 
Hình 3. 23: Giao diện trang xem bình luận về sản phẩm
 
Hình 3. 24: Giao diện trang cập nhật sản phẩm

•	Quản lý danh mục (hãng sản xuất)
Tại trang quản lý danh mục, người quản trị có thể tìm kiếm danh mục theo tên, mã danh mục, thêm mới, cập nhật hoặc xóa danh mục.
 
Hình 3. 25: Giao diện trang quản lý danh mục

 
Hình 3. 26: Giao diện trang thêm danh mục

 
Hình 3. 27: Giao diện trang cập nhật danh mục

•	Quản lý đơn hàng
Tại trang quản lý đơn hàng, người quản trị có thể tìm kiếm đơn hàng theo mã đơn hàng, tên đơn hàng, số điện thoại hoặc trạng thái đơn hàng. Người quản trị có thể xem chi tiết đơn hàng, cập nhật trạng thái đơn hàng.
 
Hình 3. 28: Giao diện trang quản lý đơn hàng

 
Hình 3. 29: Giao diện trang chi tiết đơn hàng

 
Hình 3. 30: Giao diện trang cập nhật đơn hàng
•	Quản lý tài khoản 
Tại trang quản lý tài khoản, người quản trị có thể tìm kiếm tài khoản theo mã, tên hoặc email tài khoản, thêm mới tài khoản, xem chi tiết, cập nhật hoặc xóa tài khoản.
 
Hình 3. 31: Giao diện trang quản lý tài khoản

 
Hình 3. 32: Giao diện trang thêm tài khoản

 
Hình 3. 33: Giao diện trang thông tin tài khoản

 
Hình 3. 34: Giao diện trang cập nhật tài khoản
 
Hình 3. 35: Giao diện trang đổi mật khẩu tài khoản

•	Quản lý tin tức
Tại trang quản lý tin tức, người quản trị có thể tìm kiếm tin tức theo mã hoặc tiêu đề tin tức, thêm mới, xem chi tiết, cập nhật hoặc xóa tin tức.
 
Hình 3. 36: Giao diện trang quản lý tin tức

 
Hình 3. 37: Giao diện trang thêm mới tin tức

 
Hình 3. 38: Giao diện trang xem chi tiết tin tức

 
Hình 3. 39: Giao diện trang xem cập nhật tin tức
3.2.2.2 : Đối với Nhân viên
•	Nhân viên quản lý sản phẩm
Nhân viên quản lý sản phẩm có thể thêm mới, tìm kiếm, xem, sửa, xóa sản phẩm, xem và xóa đối với bình luận của sản phẩm giống như người quản trị.
 
Hình 3. 40: Giao diện trang chủ của nhân viên quản lý sản phẩm
 
Hình 3. 41: Giao diện trang quản lý sản phẩm của nhân viên

 
Hình 3. 42: Giao diện trang thêm sản phẩm của nhân viên
 
Hình 3. 43: Giao diện trang cập nhật sản phẩm của nhân viên
 
Hình 3. 44: Giao diện trang xem chi tiết sản phẩm của nhân viên
 
Hình 3. 45: Giao diện trang xem bài viết của nhân viên
 
Hình 3. 46: Giao diện trang quản lý bình luận sản phẩm
•	Nhân viên quản lý đơn hàng 
Nhân viên quản lý đơn hàng có thể xem,tìm kiếm, cập nhật đơn hàng giống như người quản trị. 
 
Hình 3. 47: Giao diện trang chủ của nhận viên quản lý đơn hàng
 
Hình 3. 48: Giao diện trang quản lý đơn hàng của nhân viên
 
Hình 3. 49: Giao diện trang xem chi tiết đơn hàng của nhân viên
 
Hình 3. 50: Giao diện trang cập nhật đơn hàng của nhân viên
•	Nhân viên quản lý tin tức
Nhân viên quản lý tin tức có thể tìm kiếm, xem, sửa, xóa, thêm mới tin tức giống như người quản trị.
 
Hình 3. 51: Giao diện trang chủ của nhân viên quản lý tin tức
 
Hình 3. 52: Giao diện trang quản lý tin tức của nhân viên
 
Hình 3. 53: Giao diện trang thêm tin tức của nhân viên

 
Hình 3. 54: Giao diện trang xem chi tiết tin tức của nhân viên
 
Hình 3. 55: Giao diện trang cập nhật tin tức của nhân viên
•	Quản lý tài khoản của nhân viên
Nhân viên có thể sửa thông tin hoặc đổi mật khẩu tài khoản của nhân viên.
 
Hình 3. 56: Giao diện trang cập nhật tài khoản của nhân viên
 
Hình 3. 57: Giao diện trang đổi mật khẩu tài khoản của nhân viên

 
KẾT LUẬN
4.1 Đánh giá kết quả
Hệ thống hiện tại đã xây dựng được cơ bản các chức năng theo như yêu cầu ban đầu. Đó là hiển thị sản phẩm, đặt hàng, quản lý giỏ hàng, tìm kiếm, đăng nhập, …
Hệ thống được thiết kế tương đối rõ ràng và chi tiết, các usecase và các chức năng được giới thiệu, mô tả chi tiết và dễ hình dung. Mặc dù việc áp dụng các giải pháp công nghệ cũng như các thuật toán vào xậy dựng hệ thống vẫn còn những thiếu xót nhưng em sẽ hoàn thành và phát triển trong thời gian tới
•	Các chức năng đã làm được
Về phía khách hàng thì trang web đã có đầy đủ các chức năng như:
-	Xem đầy đủ được các thông tin về sản phẩm, tin tức, chính sách, giới thiệu…
-	Chức năng tìm kiếm sản phẩm dễ dàng, xem tin tức, các sản phẩm liên quan …
-	Chức năng giỏ hàng cũng được thực hiện chuẩn xác. Khi khách hàng chọn sản phẩm thì lập tức giỏ hàng được cập nhật và bên trong giỏ hàng cũng cho phép xóa đi những sản phẩm mà khách hàng không muốn mua.
Về phía người quản trị hay nhân viên thì trang quản trị đã có những chức năng như:
-	Tìm kiếm, thêm, sửa, xóa sản phẩm, hãng sản xuất…
-	Quản lý đơn hàng một cách chính xác, chi tiết.
•	Các chức năng chưa làm được
Về phía khách hàng thì trang web chưa có chức năng hộp tin nhắn để nhắn tin cho bên quản trị, chưa có chức năng thanh toán online.
4.2 Hướng phát triển
Tiếp tục xây dựng thành một website hoàn thiện hơn với đầy đủ tính năng.
Tối ưu hóa code giúp cho trang web chạy tối ưu, mượt mà hơn.
Phát triển thêm một số tính năng khác.


	

 
TÀI LIỆU THAM KHẢO
[1].	Giáo trình Hệ quản trị cơ sở dữ liệu (Đỗ Ngọc Sơn, Phan Văn Viên, Nguyễn Phương Nga - Trường Đại học Công nghiệp Hà Nội – NXB Khoa học và Kĩ thuật)
[2].	Giáo trình phân tích thiết kế hệ thống (Nguyễn Thị Thanh Huyền, Ngộ Thị Bích Thúy, Phạm Thị Kim Phượng, NXB Giáo dục VN)
[3].	Giáo trình Phân tích thiết kế hướng đối tượng (Vũ Thị Dương, Phùng Đức Hòa, Nguyễn Thị Hương Lan - Trường Đại học Công nghiệp Hà Nội – NXB Khoa học và Kĩ thuật)
[4].	https://viettuts.vn, truy cập lần cuối ngày 01/05/2022
[5].	https://webcoban.vn, truy cập lần cuối ngày 28/04/2022







