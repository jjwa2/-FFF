# FFF(FunFondFund)

<p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/프로젝트FFF2.png?raw=true"/></p>

인천일보 아카데미에서 진행한 팀 프로젝트 입니다.

음악 아티스트 펀딩 사이트 입니다.



# Description

- 개발 기간: 2023.02.27 ~ 2023.03.31 (약 5주)

- 참여 인원: 7명

- 사용 기술

<p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/사용한프로그램.png?raw=true"/></p>


  - Spring 4.0,  Apache Tomcat 9.0,  Tiles3,  BootStrap,  Mybatis,  Eclipse
  - Java,  Ajax,  Jquery,  MVC Pttern,JSP
  - Oracle 11g DataBase
  - CoolSMS,  Kakao Api

- 담당 구현 파트

  - 프로젝트 개발환경 구축, 설계 참여

  - 메인 페이지 구현

  - Header 메인 메뉴 디자인 및 구성(검색)

  - 상품 카테고리 페이지 구현(상품리스트, 페이징, 검색)

  - 상품 상세페이지 구현 (수량에 따른 가격증가, 좋아요, 장바구니, 

    구매하기, 리뷰, 상품문의)

  - GitHub 레포지토리 전체 관리

  - 팀원들의 Git Conflict 해결

    

# Views

- **메인**

  <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/메인화면.gif?raw=true"/></p>
  
  
  
  - **회원가입**

  <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/휴대폰인증.gif?raw=true"/></p>




- **펀딩** 

   <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/펀딩상세.gif?raw=true"/></p>





- **공연 예매**

 <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/공연예매.gif?raw=true"/></p>



- **아티스트 SNS**

  <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/sns페이지.gif?raw=true"/></p>


# Implementation

- #### 펀딩 리스트
  
  - **펀딩 리스트 출력 **
    <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/펀딩리스트1.gif?raw=true"/></p>


    1. isotope 플러그인을 사용하여 장르별 정렬 기능 구현.

    2. JsonView를 설정해 Json형태로 데이터를 가져와 Ajax통신으로

       펀딩 목록들 페이지에 출력.

  - **펀딩 마감처리 및 펀딩 정보 출력**
    <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/펀딩 체크.png?raw=true"/></p>


    1. Oracle 배치 프로시저, 스케줄러를 사용하여 펀딩 마감처리, 후원 성공여부 판단.
    
    2. Java의 DecimalFormat클래스를 사용하여 천단위 콤마(금액 표기하기) 표기



------



- #### 펀딩 상세 페이지

    <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/펀딩 상세페이지.png?raw=true"/></p>

    <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/펀딩 상세페이지2.png?raw=true"/></p>


  - **카테고리별 검색, 리스트, 순서, 페이징** 
    1. Mybatis 쿼리문을 이용하여 펀딩 게시글의 상세정보를 가져오고 JsonView를 설정하여 Json형태로  데이터를 가져와 Ajax 통신으로 펀딩 상세페이지를 구성합니다.

 

------


- #### 펀딩

  <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/후원 티어1.png?raw=true"/></p>

  - **펀딩 상세페이지 정보 업데이트 및 예외**

    1. Java File 클래스를 이용하여 해당하는 펀딩리스트의 포스터, 브로셔 이미지 주소를 가져와 화면에 표기.
    2. Mybatis 쿼리문을 이용하여 사용하여 후원 이후 해당 펀딩의 데이터베이스 현재 후원금액 및 후원인원 정보를 실시간으로 업데이트.
    3. Jquery를 사용하여 비회원, 펀딩 마감 이후 후원하기 기능 Block 처리

  - **펀딩 결제**

    1. Jquery를 사용하여 티어별 후원하기 클릭 시 해당하는 티어의 해택 정보 및 가격 가져오게 구현.
    2. 카카오페이 버튼 클릭시 카카오페이 단편결제 팝업창 표시. QR를 통하여 결제 진행. 
    3. 구매 완료시 카카오페이를 통한 결제완료 정보를  Json형태로 데이터를 가져와 Ajax 결제정보를 팝업창에 표기.


       


- #### 공연 예매 리스트
  
  - **공연예매 리스트 출력 **
    <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/공연리스트1.png?raw=true"/></p>


    1. isotope 플러그인을 사용하여 장르별 정렬 기능 구현.

    2. JsonView를 설정해 Json형태로 데이터를 가져와 Ajax통신으로

       펀딩 목록들 페이지에 출력.

  - **펀딩 마감처리 및 펀딩 정보 출력**
    <p align="center"><img src="https://github.com/jjwa2/-FFF/blob/master/이미지파일/펀딩 체크.png?raw=true"/></p>


    1. Oracle 배치 프로시저, 스케줄러를 사용하여 펀딩 마감처리, 후원 성공여부 판단.
    
    2. Java의 DecimalFormat클래스를 사용하여 천단위 콤마(금액 표기하기) 표기


- # CRUD

  <p align="center"><img src="https://github.com/77kkyu/Style_Is_You/blob/master/src/main/webapp/file/crud.png?raw=true"/></p>

  - **상품(리뷰) 등록 및 수정 삭제**
    1. 상품 등록 및 수정 Controller에서 ModelAndView를 사용하여 하나의 Jsp에 상품 등록인지 수정인지 구분할 수 있는 String값을 전송하여 Jstl C태그 조건문을 사용하여 구분하였습니다. 
    2. 상품 삭제 기능은 Delete처리를 하지 않고 DataBase를 설계할 때 상품 테이블에 구분 컬럼을 추가해 Update를 시켜 해당 데이터를 유저들이 보지 못하게 구성해놨습니다(Delete도 가능).
  - **상품(리뷰) 이미지 업로드 및 옵션(컬러, 사이즈) 등록**
    1. 이미지 업로드 Controller를 만들어 이미지를 서버에 저장할 수 있게 구성.
    2. 상품 또는 리뷰를 등록할 때 모든 이미지는 다중 업로드 처리를 했습니다.
    3. 상품 이미지 업로드 시 DataBase 상품 테이블 썸네일 컬럼에 자동으로 썸네일 이미지가 추가 되고 모든 이미지는 Upload 테이블에 추가됩니다.  (Service에서 상품을 등록할 때 모든 처리). 
    4. 상품 옵션은 다중 for문을 이용해 각 컬러, 사이즈마다 하나씩 DataBase에 등록이 됩니다. 





- # Log 설정

  <p align="center"><img src="https://github.com/77kkyu/Style_Is_You/blob/master/src/main/webapp/file/%EB%A1%9C%EA%B7%B8%EC%84%A4%EC%A0%95.png?raw=true"/></p>

  - **목적 및 설명**

    1. 어떤 순서로 작업이 진행되고 SQL문을 확인 및 오류는 어디서 발생되는지 확인.

    2. Log4j를 이용하였고 SQL 및 MVC패턴의 흐름을 직접적으로 느낄 수 있게   팀원들에게 제공

       

- # Tiles 설정

  <p align="center"><img src="https://github.com/77kkyu/Style_Is_You/blob/master/src/main/webapp/file/%ED%83%80%EC%9D%BC%EC%A6%88%EC%84%A4%EC%A0%95.png?raw=true"/></p>

  - **목적 및 설명**

    1. 레이아웃의 재사용성 높여주고 동적으로 배치.

    2. Tiles 기본 환경 구성 팀원들에게 제공.

    3. Header에 메인 메뉴를 설정하여 팀원들에게 제공.

       

# Trouble Shooting 

<p align="center"><img src="https://github.com/77kkyu/Style_Is_You/blob/master/src/main/webapp/file/%ED%8A%B8%EB%9F%AC%EB%B8%94%EC%8A%88%ED%8C%851.png?raw=true"/></p>

<p align="center"><img src="https://github.com/77kkyu/Style_Is_You/blob/master/src/main/webapp/file/%ED%8A%B8%EB%9F%AC%EB%B8%94%EC%8A%88%ED%8C%852.png?raw=true"/></p>



# 스케쥴 및 유즈케이스

<p align="center"><img src="https://github.com/77kkyu/Style_Is_You/blob/master/src/main/webapp/file/%EC%8A%A4%EC%BC%80%EC%A5%B4.png?raw=true"/></p>



<p align="center"><img src="https://github.com/77kkyu/Style_Is_You/blob/master/src/main/webapp/file/%EC%9C%A0%EC%A6%88%EC%BC%80%EC%9D%B4%EC%8A%A4.png?raw=true"/></p>
