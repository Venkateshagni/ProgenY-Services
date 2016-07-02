<%@ Page Title="" Language="C#" MasterPageFile="~/ProgenY-Services/ProgenY.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="preview_dotnet_templates_akshara_multi_master_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="banner">
        <div class="container">
            <h1>
                100% Free Fully Responsive HTML5 Bootstrap Template.
                <br />
                Grab it now for free!
            </h1>
            <h3>
                This is a Fully Responsive and Modern App Landing Page Template.</h3>
        </div>
    </div>
    <div class="padding100" id="blog">
        <div class="container">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>B</strong>log</span></h2>                   
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive animated wow fadeInUp" data-wow-delay="0.2s" src="img/700x300.jpg"
                            alt="">
                    </a>
                </div>
                <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                    <h3>
                        <strong>Our Projects</strong></h3>
                    <h4>
                        NewBingo</h4>
                    <p>
                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                        Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                        an update when new items arrive!</p>
                    <a class="btn btn-success" href="#">View Project <span class="glyphicon glyphicon-chevron-right">
                    </span></a>
                </div>
            </div>
          <br />
          <br />
          <br />
            <div class="row">
                <div class="col-sm-6">
                    <div class="blog-post blog-large wow zoomIn" data-wow-duration="1500ms" data-wow-delay="100ms">
                        <article>
                            <header class="entry-header">
                                <div class="entry-thumbnail">
                                    <img class="img-responsive" src="img/item01.jpg" alt="">                                    
                                </div>
                                <div class="entry-date">25 June 2014</div>
                                <h3>We work in some of the world’s toughest situations where we offer bold</h3>
                            </header>

                            <div class="entry-content">
                                <P>We work in some of the world’s toughest situations where we offer bold, practical  and innovative solutions where there is real need. Our focus is on the next generation, current and future leaders and enhancing collaboration between faith communities. We work in some of the world’s toughest situations where we offer bold.</P>
                                <p>We work in some of the world’s toughest situations where we offer bold.
                                </p>
                                <a class="btn btn-danger" href="#">Read More</a>
                            </div>

                            <footer class="entry-meta">
                                <span class="entry-author"><i class="fa fa-pencil"></i> <a href="#">Victor</a></span>
                                <span class="entry-category"><i class="fa fa-folder-o"></i> <a href="#">Tutorial</a></span>
                                <span class="entry-comments"><i class="fa fa-comments-o"></i> <a href="#">15</a></span>
                            </footer>
                        </article>
                    </div>
                </div>
                <!--/.col-sm-6-->
                <div class="col-sm-6">
                    <div class="blog-post blog-media wow zoomIn" data-wow-duration="1500ms" data-wow-delay="100ms">
                        <article class="media clearfix">
                            <div class="entry-thumbnail pull-left">
                                <img class="img-responsive" src="img/item02.jpg" alt="">                                
                            </div>
                            <div class="media-body"> <!-- Content -->
                                <header class="entry-header">
                                    <div class="entry-date">01 May 2014</div>
                                    <h2 class="entry-title"><a href="#">BeReviews was a awesome envent in Hyd</a></h2>
                                </header>

                                <div class="entry-content">
                                    <P>We work in some of the world’s toughest situations where we offer bold.</P>
                                    <a class="btn btn-danger" href="#">Read More</a>
                                </div>

                                <footer class="entry-meta">
                                    <span class="entry-author"><i class="fa fa-pencil"></i> <a href="#">Campbell</a></span>
                                    <span class="entry-category"><i class="fa fa-folder-o"></i> <a href="#">Tutorial</a></span>
                                    <span class="entry-comments"><i class="fa fa-comments-o"></i> <a href="#">15</a></span>
                                </footer>
                            </div>
                            <!-- ./Content -->
                        </article>
                    </div>
                    <div class="blog-post blog-media wow zoomIn" data-wow-duration="1500ms" data-wow-delay="100ms">
                        <article class="media clearfix">
                            <div class="entry-thumbnail pull-left">
                                <img class="img-responsive" src="img/item03.jpg" alt="">
                                
                            </div>
                            <div class="media-body"> <!-- Content -->
                                <header class="entry-header">
                                    <div class="entry-date">01 May 2014</div>
                                    <h2 class="entry-title"><a href="#">BeReviews was a awesome envent in Hyd</a></h2>
                                </header>

                                <div class="entry-content">
                                    <P>We work in some of the world’s toughest situations where we offer bold.</P>
                                    <a class="btn btn-danger" href="#">Read More</a>
                                </div>

                                <footer class="entry-meta">
                                    <span class="entry-author"><i class="fa fa-pencil"></i> <a href="#">Campbell</a></span>
                                    <span class="entry-category"><i class="fa fa-folder-o"></i> <a href="#">Tutorial</a></span>
                                    <span class="entry-comments"><i class="fa fa-comments-o"></i> <a href="#">15</a></span>
                                </footer>
                            </div>
                            <!-- ./content -->
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->
    <div class="modal fade" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="image-gallery-title">
                    </h4>
                </div>
                <div class="modal-body">
                    <img id="image-gallery-image" class="img-responsive" src="">
                </div>
                <div class="modal-footer">
                    <div class="col-md-2">
                        <button type="button" class="btn btn-primary" id="show-previous-image">
                            Previous</button>
                    </div>
                    <div class="col-md-8 text-justify" id="image-gallery-caption">
                        This text will be overwritten by jQuery
                    </div>
                    <div class="col-md-2">
                        <button type="button" id="show-next-image" class="btn btn-default">
                            Next</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

