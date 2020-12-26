<#include "header.ftl">
  <!-- Wrapper -->
  <div id="wrapper" class="fade-in">

    <!-- Intro -->
    <div id="intro">
      <h1>
        This is<br />
        CJUG
      </h1>
      <p>
        We are here to help the Java Professional. We want to make Chicago the ‘best’
        place to be a Java developer, by offering a support network that allows each
        individual Java developer to grow!
      </p>
      <ul class="actions">
        <li><a href="#header" class="button icon solid solo fa-arrow-down scrolly">Continue</a></li>
      </ul>
    </div>

    <!-- Header -->
    <header id="header">
      <a href="index.html" class="logo">CJUG</a>
    </header>

    <#include "menu.ftl">

    <!-- Main -->
    <div id="main">
      <section class="posts">
        <#list posts as post>
          <#if (post.status=="published" )>
            <article>
              <header>
                <span class="date">${post.date?string("dd MMMM yyyy")}</span>
                <h2>
                  <a href="${post.uri}">
                    <#escape x as x?xml>${post.title}</#escape>
                  </a>
                </h2>
              </header>
              <#if post.featured_image??>
                <a href="${post.uri}" class="image fit">
                  <img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${post.featured_image}" <#if
                    post.featured_image_alt??>
                  alt="${post.featured_image_alt}"
              </#if>
              />
              </a>
          </#if>
          <#if post.summary??>
            <p>${post.summary}</p>
          </#if>
          <ul class="actions special">
            <li><a href="${post.uri}" class="button">Read</a></li>
          </ul>
          </article>

          </#if>
        </#list>
      </section>
    </div>
  </div>

  <p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>

  <#include "footer.ftl">