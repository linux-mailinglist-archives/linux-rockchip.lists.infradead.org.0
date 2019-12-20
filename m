Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A6C127233
	for <lists+linux-rockchip@lfdr.de>; Fri, 20 Dec 2019 01:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W6oN0Vaiw95gaddo10Kl+SlLYVukJpxzy/NMQCvp+9E=; b=b9VvBAffvniB7wJpywVMfRYwk3
	H/CMCSi5aUOO9bN+79nvaJ2W09T9+DVi3fTzRYKILHCBT4f8ainTMbdrDhNM++pk7OW5Q19htgmeB
	d5rsz/Vldlw2aSimIRSJUXn8SQCq5ZaD7kNdFaZMGi/N4Yt4SMEuBxGYk5cvfk/h61wcP5fgzyw1a
	Yw/I5zFXwEQIQ4cpu23zJ1tSbWuBN6E25GD7984HCXqJaAe1FuTEizslUK0eDibPS1wupq9w7zc8z
	SgXUBD2sOVVHCpx9mdHnik5h6CROnV6j56+W+nT9PVSRS9ZH72coEZrgnHw09Rsho7WoeCIS3OvvQ
	0+b3wBlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5zw-0007Zz-IO; Fri, 20 Dec 2019 00:18:28 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5zf-0007OE-4q
 for linux-rockchip@lists.infradead.org; Fri, 20 Dec 2019 00:18:13 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191220001803epoutp0244a96841279450a77c67778ac80d67fa~h7Ds8KkEE0688706887epoutp02y
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 00:18:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191220001803epoutp0244a96841279450a77c67778ac80d67fa~h7Ds8KkEE0688706887epoutp02y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576801083;
 bh=S+iTTR7YS56dzyI55r8/lhpfBKHxzbzpg0qwtASqaDg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=spuF/qFnEcsFKkL4i9DY26+FYV4fc21IbuNkcMLfCLhy3aLiKmEaZFhj5MSbq7T+L
 03R/2kvU0zMhRzx9Xul/3DTcpY9kWQNPD72Ip/qSIBx9vjvyOQhjN5mz4pPwj1feD/
 wLRCHsid3W1vh1bDuty0q33bIXcBYIlgE9aRd63M=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191220001803epcas1p43f2eb2446fe864510345a0fa0a138ca4~h7DsfHLvQ2970029700epcas1p4z;
 Fri, 20 Dec 2019 00:18:03 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.157]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47f8Th5XLDzMqYm8; Fri, 20 Dec
 2019 00:18:00 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 13.14.48498.8331CFD5; Fri, 20 Dec 2019 09:18:00 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191220001800epcas1p41ab059757aeec99060cb4f47b0f48ac0~h7Dp5LzNI0539105391epcas1p4U;
 Fri, 20 Dec 2019 00:18:00 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191220001800epsmtrp2deff76c71f1dd044df080b04b8107e70~h7Dp4bFky0512905129epsmtrp2a;
 Fri, 20 Dec 2019 00:18:00 +0000 (GMT)
X-AuditID: b6c32a36-a3dff7000001bd72-5d-5dfc1338b9b5
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 94.7C.06569.8331CFD5; Fri, 20 Dec 2019 09:18:00 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191220001800epsmtip19396ebe23f3620ccf806f2f8f6f02b22~h7DpskC3_1958919589epsmtip1Q;
 Fri, 20 Dec 2019 00:18:00 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de,
 leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH v2 09/11] memory: samsung: exynos5422-dmc: Replace the
 deprecated 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:24:28 +0900
Message-Id: <20191220002430.11995-10-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOJsWRmVeSWpSXmKPExsWy7bCmnq6F8J9Yg5UntC3uz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FHZNhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJ
 uam2Si4+AbpumTlAbygplCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCiwL9IoTc4tL
 89L1kvNzrQwNDIxMgQoTsjPutaxlKZgmWDHrwmH2BsaFfF2MnBwSAiYSMz9uY+xi5OIQEtjB
 KDGlaxs7SEJI4BOjxKXpcV2MHED2N0aJbSww9Utbv7FA1O9llJj17z1U8xdGiX3fLrOCVLEJ
 aEnsf3GDDcQWEciQmPkaJM7FwSzwkUmia9tdNpCpwgK5Ej0bDEFqWARUJVpm72YGsXkFrCUu
 /17ACrFNXmL1hgNgcU6g+JZnD9lB5kgINLNLtH7uYYIocpF4u2QDVIOwxKvjW9ghbCmJz+/2
 skHY1RIrTx5hg2juYJTYsv8CVIOxxP6lk5lADmIW0JRYv0sfIqwosfP3XEYQm1mAT+Ld1x5W
 kBIJAV6JjjYhiBJlicsP7kKdICmxuL0TapWHxJ1Xc1kggdjHKLHmtcAERrlZCAsWMDKuYhRL
 LSjOTU8tNiwwQo6vTYzgRKpltoNx0TmfQ4wCHIxKPLwOab9jhVgTy4orcw8xSnAwK4nw3u74
 GSvEm5JYWZValB9fVJqTWnyI0RQYkhOZpUST84FJPq8k3tDUyNjY2MLE0MzU0FBJnJfjx8VY
 IYH0xJLU7NTUgtQimD4mDk6pBsYpW6/6H+CUdenkEto9Y/HWwBdPL90LeZpkINSQUGeqvMZW
 aKdH68GdGe9nd7mqvmBQNqiTLhXo17GdI/dI951PfOuMtpkJ+bbyrZzxSYsSORPzD5q/ftv+
 etuk5I+9n1MypN1cdpVOzqhNakhtlbXovZG1UrpOp8e1+s6TPT36IpkSH78pKbEUZyQaajEX
 FScCAK/aE+O6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCLMWRmVeSWpSXmKPExsWy7bCSnK6F8J9Yg+WtEhb357UyWlz/8pzV
 Yv6Rc6wW/x+9ZrXof/ya2eL8+Q3sFmeb3rBbrLj7kdVi0+NrrBaXd81hs/jce4TR4tOD/8wW
 M87vY7JY2NTCbrH2yF12i6XXLzJZ3G5cwWbRuvcIu4OQx5p5axg9Nq3qZPPYvKTeY+O7HUwe
 fVtWMXpsvzaP2ePzJrkA9igum5TUnMyy1CJ9uwSujHsta1kKpglWzLpwmL2BcSFfFyMnh4SA
 icTS1m8sXYxcHEICuxklzi19zQiRkJSYdvEocxcjB5AtLHH4cDFEzSdGiemz9rOD1LAJaEns
 f3GDDcQWEciT2LTxKzNIEbPAfyaJ7ycfgA0SFsiWmDxrDiuIzSKgKtEyezcziM0rYC1x+fcC
 Vohl8hKrNxwAi3MCxbc8ewi2QEjASuLl+QusExj5FjAyrGKUTC0ozk3PLTYsMMpLLdcrTswt
 Ls1L10vOz93ECA57La0djCdOxB9iFOBgVOLhdUj7HSvEmlhWXJl7iFGCg1lJhPd2x89YId6U
 xMqq1KL8+KLSnNTiQ4zSHCxK4rzy+ccihQTSE0tSs1NTC1KLYLJMHJxSDYyldcfl5vD+Ml67
 0fJeR+Ld3GsGrb1tvi0nuqSdXs6aNfu1Usq1B5J7GK7/WTqHb61bjDyrS5Bp6mmbUq0Vl3/u
 +HpdalnSj2pWc9MFNe1urz8os3IsnjfReM0S9bMmjPHHGG8w2kZvXa6uHXXNtvmF49cO3Tzx
 E1OFj8w6Lnkzb0b4DyFvdU4lluKMREMt5qLiRAAiFaEvdwIAAA==
X-CMS-MailID: 20191220001800epcas1p41ab059757aeec99060cb4f47b0f48ac0
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191220001800epcas1p41ab059757aeec99060cb4f47b0f48ac0
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001800epcas1p41ab059757aeec99060cb4f47b0f48ac0@epcas1p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_161811_537254_35DA7312 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, myungjoo.ham@samsung.com, kgene@kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Replace the deprecated 'devfreq-events' property with 'exynos,ppmu-device'
property. But, to guarantee the backward-compatibility, keep the support
of 'devfreq-events' property.

Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>
Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 drivers/memory/samsung/exynos5422-dmc.c | 29 ++++++++++++++++++++-----
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
index f11fe29a69fc..6e8aa19e84d3 100644
--- a/drivers/memory/samsung/exynos5422-dmc.c
+++ b/drivers/memory/samsung/exynos5422-dmc.c
@@ -1270,10 +1270,17 @@ static int exynos5_dmc_init_clks(struct exynos5_dmc *dmc)
 static struct devfreq_event_dev *exynos5_dmc_get_edev(struct device_node *np,
 							int index)
 {
-	struct device_node *node = of_parse_phandle(np, "devfreq-events",
+	struct device_node *node = of_parse_phandle(np, "exynos,ppmu-device",
 							index);
-	if (!node)
-		return ERR_PTR(-ENODEV);
+	if (!node) {
+		 /*
+		  * Check the deprecated 'devfreq-events' property
+		  * to support backward-compatibility.
+		 */
+		node = of_parse_phandle(np, "devfreq-events", index);
+		if (!node)
+			return ERR_PTR(-ENODEV);
+	}
 	return devfreq_event_get_edev_by_node(node);
 }
 
@@ -1292,10 +1299,20 @@ static int exynos5_performance_counters_init(struct exynos5_dmc *dmc)
 	int ret, i;
 
 	dmc->num_counters = of_property_count_elems_of_size(dmc->dev->of_node,
-					"devfreq-events", sizeof(u32));
+					"exynos,ppmu-device", sizeof(u32));
 	if (dmc->num_counters < 0) {
-		dev_err(dmc->dev, "could not get devfreq-event counters\n");
-		return dmc->num_counters;
+		 /*
+		  * Check the deprecated 'devfreq-events' property
+		  * to support backward-compatibility.
+		 */
+		dmc->num_counters = of_property_count_elems_of_size(
+					dmc->dev->of_node,
+					"devfreq-events", sizeof(u32));
+		if (dmc->num_counters < 0) {
+			dev_err(dmc->dev,
+				"could not get devfreq-event counters\n");
+			return dmc->num_counters;
+		}
 	}
 
 	counters_size = sizeof(struct devfreq_event_dev) * dmc->num_counters;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
