Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C0D1FF7C8
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 17:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0NLu1StBnL8sCC2La1vTGpR0ECGg/1EZsoBTF3xnJWs=; b=E7Mucur0hTxl7Cd8T9Xt/kggI3
	8jvaLD912e0VAguXzcD8tkpTqx+3R/HI1qLiSTNXByyLA3e3ZKVaJrd+J6z3GrgShppGg4eRL5njt
	RKIknzh3VU5IgEJBqOIkiwhZkA33KkDD01CIqNucBRcPF7wlf0kfxD/ySlbjvD/QyLat3o5wFeRl4
	mynSr2guF3B2HntS1aMSUN9uD0965NjQV5IWX8zB70aZJzhR8hgoX2ignXz3vMnnve8wTym3ux2Qd
	vFAnfOnp2KJTDomsOC5S/12NtW+DcLU7KPPovwaJ7LTLONaSUUQ5y7OO5SeMcLeXs14NKQiNqeTzQ
	6OhYOrTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwjO-0002F7-6E; Thu, 18 Jun 2020 15:45:34 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweT-0004Gn-HR
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 15:40:33 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154027euoutp02cdbe0379e992c2190b09a0400a3a9de0~ZrZvOju961470214702euoutp02K
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154027euoutp02cdbe0379e992c2190b09a0400a3a9de0~ZrZvOju961470214702euoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494827;
 bh=uRyWiAszaWTmT9aEcwSkw+b3g8jzvTahdvI0hzE+vrU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hLEmWXytA/Bhl7IVVUsGBvt+rnnUN2FI83I8WFl9icYOynYtf0sVHoxDRVza4Ps4q
 MqFq9HLUTgplTVrQDTlyd6x2bBOB9ZNVq9M/RkQ4UwbzaGzccnXd9JY9sKOEQUiWso
 RiYaGch7oGcUMPbLl2FsJ6KlKwCb2Uv9/umxMGHw=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154027eucas1p21b70c76835153155c3d9b7e87ec267e5~ZrZu7wq3x2977729777eucas1p2P;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 96.1F.61286.BEA8BEE5; Thu, 18
 Jun 2020 16:40:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154027eucas1p14806dddf83e91e2e5e24d3dd4ca2fc7e~ZrZumaGTa1545515455eucas1p1c;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154027eusmtrp1a6b7094276e56125f596c8c80c5a4e0d~ZrZulzhzt2169821698eusmtrp1h;
 Thu, 18 Jun 2020 15:40:27 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-d8-5eeb8aebc8d7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B9.E9.07950.BEA8BEE5; Thu, 18
 Jun 2020 16:40:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154026eusmtip16c47c3cf90f7729427124b9a8789ee03~ZrZtsuKH_0834108341eusmtip1N;
 Thu, 18 Jun 2020 15:40:26 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 19/36] drm: rockchip: fix common struct sg_table related
 issues
Date: Thu, 18 Jun 2020 17:39:40 +0200
Message-Id: <20200618153956.29558-20-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTcRjlt7u7XWWT2zT8Yaa0qExoagpd0Ewr5AZlD6QocLryoqabsqlp
 9BDFqKmZU3RIikimTc1comGWj9Jpw9cUMR/lk9IhU6emli7nXfbfOec7H+fw8WEI7yPqgEVK
 4iipRBTNZ1kz69rXe47p5Xqhe1rnQSKzu5NB1CirUcJUl40QAysGFvGqoo1BmCb1KFGouE8U
 N3kTywMTDEI9NYgS/Q3PWcTSuAkhqj6PsYmWhWnUz4asLKoE5IfVYiZZvzqOkt/TNQzy7YuH
 5MjWFELmDJUB8v3XZBa5WdDEJJ/WqgBZP1iEkEa10yXODWufMCo6MoGSuvmGWke0NSnQ2Kz9
 iamTG2gyyIFygGEQ94JfGgLkwBrj4eUAbvb9YNFkGUBluYlJEyOA2T31bDmw2tnQlXRaBmUA
 NhgX0d2VuSwTanaxcA8on5ezzNgOTwOwI5Njxgieh0DVSoAZ2+JBcKZmg23uwcQPwfkSaJa5
 uC9c0OtROswZVrxpRszYalvXatJ2siCuY0PtYI3FdBYq5n5a2tnCOU2tBTtCbU4Gk15IBXCi
 u4pNkwwA+1OUgHZ5w9HuDZa5BYIfhdUNbrTsDw0dv9j0kWzg0Pweur8NVNTlI7TMhY8f8Wj3
 YVigeb0b29KrQ2hMwsnhfMt9sgFsXm9EngHngv9hxQCogD0VLxOHUzIPCXVHIBOJZfGScMGt
 GLEabH+Vdkuz9A6s6G62AhwDfA7X75peyENFCbIkcSuAGMK3457u0gp53DBR0l1KGhMijY+m
 ZK1gH8bk23M9S2aDeXi4KI6KoqhYSvpvysCsHJLB5SOlLi+F6T6FEvWDxhO5AsXwWrNuUel1
 Jbj9Ouq4HKjqO37GdZZM/30AFP2ZmIhraswxXDQaW+7N8HIDg24XJnZwnoyUGxyd8gSTnw7p
 BkuTOzfPxY7Gt40qQ210V0/6tzuvkRc6zn87JfDsdfEL2TvtbkiVpHTFjQWGDI9FGfhMWYTI
 wxWRykR/AZhNljtRAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xu7qvu17HGbycw2vRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GUc3T+JtaBftqL50S/WBsbJEl2MnBwSAiYSlxadZOli5OIQEljK
 KLFk31VGiISMxMlpDawQtrDEn2tdbBBFnxgljvZtYgZJsAkYSnS9hUiICHQySkzr/sgO4jAL
 zGOWWL7qMFMXIweHsECQxOymWBCTRUBV4u0isM28AnYSH16/hlogL7F6wwGwmZxA8dPHW8Hi
 QgK2Es8/tLFNYORbwMiwilEktbQ4Nz232EivODG3uDQvXS85P3cTIzB2th37uWUHY9e74EOM
 AhyMSjy8L0JexwmxJpYVV+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4EKMp0E0TmaVE
 k/OBcZ1XEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoHxjP+sKU5c
 92b8YO1p4vutFVdqenu2vuaygJJ3ss9vZ0Sdmq7ikDtNS9f3U12v0udU8fIdJRLp2R1H5kk2
 /8g9crFD4sQN76CKL0+yhFPX5S5nEf5o+zNfLYGj3Mxrd3XBlsNXrL/U6bl+eNB7daJ7RrjJ
 hnzf7w8OzSjNWP+Q93ZBa6bC7gAlluKMREMt5qLiRADlczlkswIAAA==
X-CMS-MailID: 20200618154027eucas1p14806dddf83e91e2e5e24d3dd4ca2fc7e
X-Msg-Generator: CA
X-RootMTR: 20200618154027eucas1p14806dddf83e91e2e5e24d3dd4ca2fc7e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154027eucas1p14806dddf83e91e2e5e24d3dd4ca2fc7e
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154027eucas1p14806dddf83e91e2e5e24d3dd4ca2fc7e@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084029_733459_03B7AF43 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The Documentation/DMA-API-HOWTO.txt states that the dma_map_sg() function
returns the number of the created entries in the DMA address space.
However the subsequent calls to the dma_sync_sg_for_{device,cpu}() and
dma_unmap_sg must be called with the original number of the entries
passed to the dma_map_sg().

struct sg_table is a common structure used for describing a non-contiguous
memory buffer, used commonly in the DRM and graphics subsystems. It
consists of a scatterlist with memory pages and DMA addresses (sgl entry),
as well as the number of scatterlist entries: CPU pages (orig_nents entry)
and DMA mapped pages (nents entry).

It turned out that it was a common mistake to misuse nents and orig_nents
entries, calling DMA-mapping functions with a wrong number of entries or
ignoring the number of mapped entries returned by the dma_map_sg()
function.

To avoid such issues, lets use a common dma-mapping wrappers operating
directly on the struct sg_table objects and use scatterlist page
iterators where possible. This, almost always, hides references to the
nents and orig_nents entries, making the code robust, easier to follow
and copy/paste safe.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 23 +++++++++------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 2970e534e2bb..cb50f2ba2e46 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -36,8 +36,8 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
 
 	rk_obj->dma_addr = rk_obj->mm.start;
 
-	ret = iommu_map_sg(private->domain, rk_obj->dma_addr, rk_obj->sgt->sgl,
-			   rk_obj->sgt->nents, prot);
+	ret = iommu_map_sgtable(private->domain, rk_obj->dma_addr, rk_obj->sgt,
+				prot);
 	if (ret < rk_obj->base.size) {
 		DRM_ERROR("failed to map buffer: size=%zd request_size=%zd\n",
 			  ret, rk_obj->base.size);
@@ -98,11 +98,10 @@ static int rockchip_gem_get_pages(struct rockchip_gem_object *rk_obj)
 	 * TODO: Replace this by drm_clflush_sg() once it can be implemented
 	 * without relying on symbols that are not exported.
 	 */
-	for_each_sg(rk_obj->sgt->sgl, s, rk_obj->sgt->nents, i)
+	for_each_sgtable_sg(rk_obj->sgt, s, i)
 		sg_dma_address(s) = sg_phys(s);
 
-	dma_sync_sg_for_device(drm->dev, rk_obj->sgt->sgl, rk_obj->sgt->nents,
-			       DMA_TO_DEVICE);
+	dma_sync_sgtable_for_device(drm->dev, rk_obj->sgt, DMA_TO_DEVICE);
 
 	return 0;
 
@@ -350,8 +349,8 @@ void rockchip_gem_free_object(struct drm_gem_object *obj)
 		if (private->domain) {
 			rockchip_gem_iommu_unmap(rk_obj);
 		} else {
-			dma_unmap_sg(drm->dev, rk_obj->sgt->sgl,
-				     rk_obj->sgt->nents, DMA_BIDIRECTIONAL);
+			dma_unmap_sgtable(drm->dev, rk_obj->sgt,
+					  DMA_BIDIRECTIONAL, 0);
 		}
 		drm_prime_gem_destroy(obj, rk_obj->sgt);
 	} else {
@@ -476,15 +475,13 @@ rockchip_gem_dma_map_sg(struct drm_device *drm,
 			struct sg_table *sg,
 			struct rockchip_gem_object *rk_obj)
 {
-	int count = dma_map_sg(drm->dev, sg->sgl, sg->nents,
-			       DMA_BIDIRECTIONAL);
-	if (!count)
-		return -EINVAL;
+	int err = dma_map_sgtable(drm->dev, sg, DMA_BIDIRECTIONAL, 0);
+	if (err)
+		return err;
 
 	if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
 		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
-		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
-			     DMA_BIDIRECTIONAL);
+		dma_unmap_sgtable(drm->dev, sg, DMA_BIDIRECTIONAL, 0);
 		return -EINVAL;
 	}
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
