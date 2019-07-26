Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDBE75BDD
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 02:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6P471BBfJMI/XNTPbMLbPl8AaFyVoPRDwPibpIWMMw=; b=IeNlXI7EQGUU8G
	cPzKqADRjCVz4DG1df4V2f6nNwDYShMcatIe+3y8SW59vQDADxLvAMZH46YgIVLFT1dJv18QDsyaN
	PnCVjd+9hz/A/7EfmNfBWwprUTjMJsLXY8ATPwisva693KPw0LdFLJK960vkvyiT6qgEycXVwDT8R
	8xniMOyOnsFU4h4e4Th0a1hmIPLc1LmqYU0yswQY/zxkWmzNVcbTKFgwoMiq0lb7paCu81qk2hCPf
	+tWv9jAO01UuAC+ZQnz+3GMDu/caRgk5sr+L6JjXrU/4yKma4AdNi9V0CuWzIaBX2e1m0QJ8R4JgA
	QjSEi+9QfcqvXurE33jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqnk8-0001wY-N9; Fri, 26 Jul 2019 00:05:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqnk5-0001w2-Vx
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 00:05:51 +0000
Received: from localhost.localdomain (c-73-223-200-170.hsd1.ca.comcast.net
 [73.223.200.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D555229F9;
 Fri, 26 Jul 2019 00:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564099548;
 bh=ivU+Nk6TC3cNZvfii511FAGTl7zmUHp39Fzg2bYfiZA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=p6kbI70FMfgTxXFJgRVShi5NbBfi+cvshWuJOFbw9ZX9vSBNoCraf+HR3yuja0sPf
 up4aZ+bLi6Ewqt8pvll/XnShfDC0H4lmA4NWoFZG9lXmCRGaLnZJd/WU5sLbxIKv5s
 6oCC+w8bS9W9p060MQxWJg+ss7wrmpzBoDXCMH+Y=
Date: Thu, 25 Jul 2019 17:05:47 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 1/9] lib/sort.c: implement sort() variant taking context
 argument
Message-Id: <20190725170547.a8a357dd76cc586f475b782d@linux-foundation.org>
In-Reply-To: <20190619121540.29320-2-boris.brezillon@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-2-boris.brezillon@collabora.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_170550_064794_D9BD4A9F 
X-CRM114-Status: GOOD (  23.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 14:15:32 +0200 Boris Brezillon <boris.brezillon@collabora.com> wrote:

> From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> 
> Our list_sort() utility has always supported a context argument that
> is passed through to the comparison routine. Now there's a use case
> for the similar thing for sort().
> 
> This implements sort_r by simply extending the existing sort function
> in the obvious way. To avoid code duplication, we want to implement
> sort() in terms of sort_r(). The naive way to do that is
> 
> static int cmp_wrapper(const void *a, const void *b, const void *ctx)
> {
>   int (*real_cmp)(const void*, const void*) = ctx;
>   return real_cmp(a, b);
> }
> 
> sort(..., cmp) { sort_r(..., cmp_wrapper, cmp) }
> 
> but this would do two indirect calls for each comparison. Instead, do
> as is done for the default swap functions - that only adds a cost of a
> single easily predicted branch to each comparison call.
> 
> Aside from introducing support for the context argument, this also
> serves as preparation for patches that will eliminate the indirect
> comparison calls in common cases.

Acked-by: Andrew Morton <akpm@linux-foundation.org>

> --- a/lib/sort.c
> +++ b/lib/sort.c
> @@ -144,6 +144,18 @@ static void do_swap(void *a, void *b, size_t size, swap_func_t swap_func)
>  		swap_func(a, b, (int)size);
>  }
>  
> +typedef int (*cmp_func_t)(const void *, const void *);
> +typedef int (*cmp_r_func_t)(const void *, const void *, const void *);
> +#define _CMP_WRAPPER ((cmp_r_func_t)0L)

Although I can't say I'm a fan of _CMP_WRAPPER.  I don't understand
what the name means.  Why not simply open-code NULL in the two sites?

> +static int do_cmp(const void *a, const void *b,
> +		  cmp_r_func_t cmp, const void *priv)
> +{
> +	if (cmp == _CMP_WRAPPER)
> +		return ((cmp_func_t)(priv))(a, b);
> +	return cmp(a, b, priv);
> +}
> +
>  /**
>   * parent - given the offset of the child, find the offset of the parent.
>   * @i: the offset of the heap element whose parent is sought.  Non-zero.
> @@ -171,12 +183,13 @@ static size_t parent(size_t i, unsigned int lsbit, size_t size)
>  }
>  
>  /**
> - * sort - sort an array of elements
> + * sort_r - sort an array of elements
>   * @base: pointer to data to sort
>   * @num: number of elements
>   * @size: size of each element
>   * @cmp_func: pointer to comparison function
>   * @swap_func: pointer to swap function or NULL
> + * @priv: third argument passed to comparison function

Passing priv==NULLis part of the interface and should be documented?

>   *
>   * This function does a heapsort on the given array.  You may provide
>   * a swap_func function if you need to do something more than a memory
> @@ -188,9 +201,10 @@ static size_t parent(size_t i, unsigned int lsbit, size_t size)
>   * O(n*n) worst-case behavior and extra memory requirements that make
>   * it less suitable for kernel use.
>   */
> -void sort(void *base, size_t num, size_t size,
> -	  int (*cmp_func)(const void *, const void *),
> -	  void (*swap_func)(void *, void *, int size))
> +void sort_r(void *base, size_t num, size_t size,
> +	    int (*cmp_func)(const void *, const void *, const void *),
> +	    void (*swap_func)(void *, void *, int size),
> +	    const void *priv)
>  {
>  	/* pre-scale counters for performance */
>  	size_t n = num * size, a = (num/2) * size;
> @@ -238,12 +252,12 @@ void sort(void *base, size_t num, size_t size,
>  		 * average, 3/4 worst-case.)
>  		 */
>  		for (b = a; c = 2*b + size, (d = c + size) < n;)
> -			b = cmp_func(base + c, base + d) >= 0 ? c : d;
> +			b = do_cmp(base + c, base + d, cmp_func, priv) >= 0 ? c : d;
>  		if (d == n)	/* Special case last leaf with no sibling */
>  			b = c;
>  
>  		/* Now backtrack from "b" to the correct location for "a" */
> -		while (b != a && cmp_func(base + a, base + b) >= 0)
> +		while (b != a && do_cmp(base + a, base + b, cmp_func, priv) >= 0)
>  			b = parent(b, lsbit, size);
>  		c = b;			/* Where "a" belongs */
>  		while (b != a) {	/* Shift it into place */
> @@ -252,4 +266,12 @@ void sort(void *base, size_t num, size_t size,
>  		}
>  	}
>  }
> +EXPORT_SYMBOL(sort_r);
> +
> +void sort(void *base, size_t num, size_t size,
> +	  int (*cmp_func)(const void *, const void *),
> +	  void (*swap_func)(void *, void *, int size))
> +{
> +	return sort_r(base, num, size, _CMP_WRAPPER, swap_func, cmp_func);
> +}
>  EXPORT_SYMBOL(sort);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
