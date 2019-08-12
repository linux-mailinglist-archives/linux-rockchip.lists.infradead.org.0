Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DAB8A72B
	for <lists+linux-rockchip@lfdr.de>; Mon, 12 Aug 2019 21:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3PXDXg+2cxtOi/IRAk1ljf7wBSyl9/Eshz6LR0rZxE=; b=fFaRTwXlq/d+Xe
	LuQNcvKvGBhd36Y5PDV946p+nmoUIUjZb1BRNPUUf/VxbxWFQ/Jx/bty69aIugv0C0ajZB/bgZyt0
	O1THEYvjdZqBlXGmzD9BqfIEmf8vMTuyTjyUWGCNFTQC3R++JaR5xyj+2iulxB2NuBe0CXGpx1WDz
	xNil3EQyoUnxoeK8Ycu52EQgyNnDSCQuKaXp+n5cKxXcx8hJLRPW/mauQDRzQXz2PmNucnnjAngHY
	c0Y23ag+eaL4DSU35Oq5w4qcsYyFot+Md2f1VLtTk2wmj0YCmcP4cBs0pYzQ/0S3w3gUDAdyvgrNK
	ANbIgwKN8WeKazJ9iQFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxG6e-0005PE-Do; Mon, 12 Aug 2019 19:35:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxG6a-0005NC-7c
 for linux-rockchip@lists.infradead.org; Mon, 12 Aug 2019 19:35:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 00945283D3D
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v5 01/11] lib/sort.c: implement sort() variant taking context
 argument
Date: Mon, 12 Aug 2019 16:35:12 -0300
Message-Id: <20190812193522.10911-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190812193522.10911-1-ezequiel@collabora.com>
References: <20190812193522.10911-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_123544_542290_B0AB62D6 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Rasmus Villemoes <linux@rasmusvillemoes.dk>

Our list_sort() utility has always supported a context argument that
is passed through to the comparison routine. Now there's a use case
for the similar thing for sort().

This implements sort_r by simply extending the existing sort function
in the obvious way. To avoid code duplication, we want to implement
sort() in terms of sort_r(). The naive way to do that is

static int cmp_wrapper(const void *a, const void *b, const void *ctx)
{
  int (*real_cmp)(const void*, const void*) = ctx;
  return real_cmp(a, b);
}

sort(..., cmp) { sort_r(..., cmp_wrapper, cmp) }

but this would do two indirect calls for each comparison. Instead, do
as is done for the default swap functions - that only adds a cost of a
single easily predicted branch to each comparison call.

Aside from introducing support for the context argument, this also
serves as preparation for patches that will eliminate the indirect
comparison calls in common cases.

Requested-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Acked-by: Andrew Morton <akpm@linux-foundation.org>
Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 include/linux/sort.h |  5 +++++
 lib/sort.c           | 34 ++++++++++++++++++++++++++++------
 2 files changed, 33 insertions(+), 6 deletions(-)

diff --git a/include/linux/sort.h b/include/linux/sort.h
index 2b99a5dd073d..61b96d0ebc44 100644
--- a/include/linux/sort.h
+++ b/include/linux/sort.h
@@ -4,6 +4,11 @@
 
 #include <linux/types.h>
 
+void sort_r(void *base, size_t num, size_t size,
+	    int (*cmp)(const void *, const void *, const void *),
+	    void (*swap)(void *, void *, int),
+	    const void *priv);
+
 void sort(void *base, size_t num, size_t size,
 	  int (*cmp)(const void *, const void *),
 	  void (*swap)(void *, void *, int));
diff --git a/lib/sort.c b/lib/sort.c
index cf408aec3733..d54cf97e9548 100644
--- a/lib/sort.c
+++ b/lib/sort.c
@@ -144,6 +144,18 @@ static void do_swap(void *a, void *b, size_t size, swap_func_t swap_func)
 		swap_func(a, b, (int)size);
 }
 
+typedef int (*cmp_func_t)(const void *, const void *);
+typedef int (*cmp_r_func_t)(const void *, const void *, const void *);
+#define _CMP_WRAPPER ((cmp_r_func_t)0L)
+
+static int do_cmp(const void *a, const void *b,
+		  cmp_r_func_t cmp, const void *priv)
+{
+	if (cmp == _CMP_WRAPPER)
+		return ((cmp_func_t)(priv))(a, b);
+	return cmp(a, b, priv);
+}
+
 /**
  * parent - given the offset of the child, find the offset of the parent.
  * @i: the offset of the heap element whose parent is sought.  Non-zero.
@@ -171,12 +183,13 @@ static size_t parent(size_t i, unsigned int lsbit, size_t size)
 }
 
 /**
- * sort - sort an array of elements
+ * sort_r - sort an array of elements
  * @base: pointer to data to sort
  * @num: number of elements
  * @size: size of each element
  * @cmp_func: pointer to comparison function
  * @swap_func: pointer to swap function or NULL
+ * @priv: third argument passed to comparison function
  *
  * This function does a heapsort on the given array.  You may provide
  * a swap_func function if you need to do something more than a memory
@@ -188,9 +201,10 @@ static size_t parent(size_t i, unsigned int lsbit, size_t size)
  * O(n*n) worst-case behavior and extra memory requirements that make
  * it less suitable for kernel use.
  */
-void sort(void *base, size_t num, size_t size,
-	  int (*cmp_func)(const void *, const void *),
-	  void (*swap_func)(void *, void *, int size))
+void sort_r(void *base, size_t num, size_t size,
+	    int (*cmp_func)(const void *, const void *, const void *),
+	    void (*swap_func)(void *, void *, int size),
+	    const void *priv)
 {
 	/* pre-scale counters for performance */
 	size_t n = num * size, a = (num/2) * size;
@@ -238,12 +252,12 @@ void sort(void *base, size_t num, size_t size,
 		 * average, 3/4 worst-case.)
 		 */
 		for (b = a; c = 2*b + size, (d = c + size) < n;)
-			b = cmp_func(base + c, base + d) >= 0 ? c : d;
+			b = do_cmp(base + c, base + d, cmp_func, priv) >= 0 ? c : d;
 		if (d == n)	/* Special case last leaf with no sibling */
 			b = c;
 
 		/* Now backtrack from "b" to the correct location for "a" */
-		while (b != a && cmp_func(base + a, base + b) >= 0)
+		while (b != a && do_cmp(base + a, base + b, cmp_func, priv) >= 0)
 			b = parent(b, lsbit, size);
 		c = b;			/* Where "a" belongs */
 		while (b != a) {	/* Shift it into place */
@@ -252,4 +266,12 @@ void sort(void *base, size_t num, size_t size,
 		}
 	}
 }
+EXPORT_SYMBOL(sort_r);
+
+void sort(void *base, size_t num, size_t size,
+	  int (*cmp_func)(const void *, const void *),
+	  void (*swap_func)(void *, void *, int size))
+{
+	return sort_r(base, num, size, _CMP_WRAPPER, swap_func, cmp_func);
+}
 EXPORT_SYMBOL(sort);
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
