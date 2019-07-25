Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7237C74E48
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 14:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dt3S67ti1+tSUMuzgmNPnElGyZ30AomZ3HANE+5Tv9c=; b=HTMVjW1a2EUmfy
	Z7rKkxiEopvmS5dewq4T3ADOWtAHPlwpiQSIHnQaC6uzsP13jI80tRKggwvy1ruNp12a8Li2HK3Ol
	2cPAHUUMIGNMOOFNzXAhyHHXyaDMSB7/OZ0lZhMAsEJrZ/KJE/z+SAd4ewn91eHIIqP46nm3Rr+dJ
	oBrpSF2xXoI4jLghUDEak6GUoc7Hkc8dxWgc00l1lV8dVzMvRLMXRmtpTw9pVix+m82rfPCUWhOkR
	nzkCm9SOWYu9FUiSFaAR67Hnh70qycpd5MTshzCxqcUgFjAXgv/lWdHmhXo5KR7FGkcL6Oifzq7WF
	MthqiyFzJ2uabGtRk6WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqd36-0006Vo-CE; Thu, 25 Jul 2019 12:40:44 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqd32-0006V1-GK
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 12:40:42 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A27AE28AACA;
 Thu, 25 Jul 2019 13:40:38 +0100 (BST)
Date: Thu, 25 Jul 2019 14:40:35 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil
 <hans.verkuil@cisco.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>,
 linux-media@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH 1/9] lib/sort.c: implement sort() variant taking context
 argument
Message-ID: <20190725144035.486a33ef@collabora.com>
In-Reply-To: <20190619121540.29320-2-boris.brezillon@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-2-boris.brezillon@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_054040_807726_4A8E2F19 
X-CRM114-Status: GOOD (  32.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Andrew,

On Wed, 19 Jun 2019 14:15:32 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

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
> 
> Requested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> ---
> Hi all,
> 
> Andrew, you acked the first version of this patch, but Rasmus proposed
> a better solution and posted a v2. Can you review/ack this version.

Hans is planning to take that patch soon. Would you mind adding your
Ack back (assuming you're okay with the new version of course)?

Thanks,

Boris

> 
> Hans, Mauro, Andrew suggested to have this patch applied along with
> its first user (the H264 backend of the hantro codec), so here it is.
> Note that, if possible, I'd like to have this patch queued for the next
> release even if the H264 bits don't get accepted as is. The rationale
> here being that Rasmus told me he was planning to further improve the
> sort() logic after the next -rc1 is out, and I fear his changes will
> conflict with this patch, which might involve some kind synchronisation
> (a topic branch) between the media maintainers and Andrew.
> 
> Let me know how you want to proceed with that.
> 
> Regards,
> 
> Boris
> ---
>  include/linux/sort.h |  5 +++++
>  lib/sort.c           | 34 ++++++++++++++++++++++++++++------
>  2 files changed, 33 insertions(+), 6 deletions(-)
> 
> diff --git a/include/linux/sort.h b/include/linux/sort.h
> index 2b99a5dd073d..61b96d0ebc44 100644
> --- a/include/linux/sort.h
> +++ b/include/linux/sort.h
> @@ -4,6 +4,11 @@
>  
>  #include <linux/types.h>
>  
> +void sort_r(void *base, size_t num, size_t size,
> +	    int (*cmp)(const void *, const void *, const void *),
> +	    void (*swap)(void *, void *, int),
> +	    const void *priv);
> +
>  void sort(void *base, size_t num, size_t size,
>  	  int (*cmp)(const void *, const void *),
>  	  void (*swap)(void *, void *, int));
> diff --git a/lib/sort.c b/lib/sort.c
> index cf408aec3733..d54cf97e9548 100644
> --- a/lib/sort.c
> +++ b/lib/sort.c
> @@ -144,6 +144,18 @@ static void do_swap(void *a, void *b, size_t size, swap_func_t swap_func)
>  		swap_func(a, b, (int)size);
>  }
>  
> +typedef int (*cmp_func_t)(const void *, const void *);
> +typedef int (*cmp_r_func_t)(const void *, const void *, const void *);
> +#define _CMP_WRAPPER ((cmp_r_func_t)0L)
> +
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
