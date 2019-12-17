Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE80C122424
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Dec 2019 06:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K7nqH5jCSpcckqqgkPalKLds/4zIkl3GVFtEnEq1eik=; b=jw3y9FVOMOQA4tg3iphOZOsxm8
	q8GKQH79mHcZjYzTqsT/IQ427LXWyiqK97aRF3Kt6FG7A0LTpX+oImANO3HF9qiNED9RoedvZUhcq
	/81A5JV3zrK1XGdrE9H6z4yp6nSUzRG7KERcPmGrUSrYmiGV9OGb9DecxEOokeCtKO0nUJumPR1UT
	KMqRrmm0uKFo7T0xdcPXq2A8yB4ediIwWvTt8U5XVPRX1fnNHjTkPGh4/RZO/qjxr1egoKI11KboO
	WPm7OffOF9nlGdQfo8I/xPY9emlsD5aoeeTaHrC6odz8/BlpaIMCtWaRltMvLDJplSxZIQT1ABA84
	/ccK8ewA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih5mp-0001dQ-SP; Tue, 17 Dec 2019 05:52:47 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih5lN-0000KP-3C
 for linux-rockchip@lists.infradead.org; Tue, 17 Dec 2019 05:51:24 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191217055110epoutp0279083c55b662d6ba88c389a417593ee7~hEqsXHKdr1111111111epoutp02F
 for <linux-rockchip@lists.infradead.org>; Tue, 17 Dec 2019 05:51:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191217055110epoutp0279083c55b662d6ba88c389a417593ee7~hEqsXHKdr1111111111epoutp02F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576561870;
 bh=kqLCJ1fZSePqnaq+HmB+ISkFNAEZmake+hMgIYHR+fo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DPNW34NlTu75CfnI8LRNQvKgAody7muzc9FNeN/Fpbryhy3rwNjb7wW6b3QwWL/cZ
 63SBghZIad8i+zDMcXgOE4giDE+3+dL+DRKGVQf2YTkw5GVCDCXwwKqdbrAxiPsZ4P
 GjjFc0148mekxMIMSsAB1iggM96S5bzQdHzuvaP8=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191217055110epcas1p4d90fd60cebb65f3d446ee0837679e5ad~hEqr9_9Ko2267722677epcas1p4V;
 Tue, 17 Dec 2019 05:51:10 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.156]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47cS1Q1XP0zMqYlr; Tue, 17 Dec
 2019 05:51:06 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 55.0D.51241.ACC68FD5; Tue, 17 Dec 2019 14:51:06 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191217055105epcas1p2d2930402a559e381a7854f515a683d15~hEqn2gwws2687526875epcas1p2P;
 Tue, 17 Dec 2019 05:51:05 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191217055105epsmtrp20818ed3f04c1e88c63d24fceaeff298e~hEqn0eRxU1905819058epsmtrp29;
 Tue, 17 Dec 2019 05:51:05 +0000 (GMT)
X-AuditID: b6c32a39-14bff7000001c829-46-5df86ccad4f5
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0C.7E.06569.9CC68FD5; Tue, 17 Dec 2019 14:51:05 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191217055105epsmtip1c59bc9a95c93e86535bd99e252bbaaf9~hEqnkFNkG3114631146epsmtip1k;
 Tue, 17 Dec 2019 05:51:05 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH 2/9] PM / devfreq: Remove devfreq_get_devfreq_by_phandle
 function
Date: Tue, 17 Dec 2019 14:57:31 +0900
Message-Id: <20191217055738.28445-3-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217055738.28445-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNJsWRmVeSWpSXmKPExsWy7bCmnu6pnB+xBl83sFrcn9fKaHH9y3NW
 i/lHzrFa/H/0mtWi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGi08P/jNb
 zDi/j8liYVMLu8XaI3fZLZZev8hkcbtxBZtF694j7A5CHmvmrWH02LSqk81j85J6j43vdjB5
 9G1Zxeix/do8Zo/Pm+QC2KOybTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPIS
 c1NtlVx8AnTdMnOA3lBSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFFgW6BUn5haX
 5qXrJefnWhkaGBiZAhUmZGfMndDEXvBDoeLf5imsDYy3pbsYOTkkBEwkGo/cZOli5OIQEtjB
 KHH1zy5WCOcTo8T5hQ+ZIZxvjBIzpm5igmmZ92wnO0RiL6PEnPOXofq/MEo8+NjBAlLFJqAl
 sf/FDTYQW0SgTmL+4R1MIEXMAjeZJPZcusUKkhAWCJY40H+fHcRmEVCV+DrhBJDNwcErYCUx
 +Z4DxDZ5idUbDjCD2JwC1hLPt70GmyMh8J9NYtKT/4wQRS4SD/6sZIWwhSVeHd/CDmFLSXx+
 t5cNwq6WWHnyCBtEcwejxJb9F6AajCX2L53MBLKYWUBTYv0ufYiwosTO33PB5jML8Em8+9rD
 ClIiIcAr0dEmBFGiLHH5wV1oqEhKLG7vhFrlIXF9+VpoCPUxSpy8fIZpAqPcLIQNCxgZVzGK
 pRYU56anFhsWmCLH2SZGcELVstzBeOyczyFGAQ5GJR5eiZLvsUKsiWXFlbmHGCU4mJVEeHco
 AIV4UxIrq1KL8uOLSnNSiw8xmgJDciKzlGhyPjDZ55XEG5oaGRsbW5gYmpkaGiqJ83L8uBgr
 JJCeWJKanZpakFoE08fEwSnVwMge8Fvpv9HGZ9dXNujHGvW+WdO7x1phs0Pn/oxfxqvNi868
 9DuSUzJZULeizyPy9azIes+vfE0V+Uns+//x2ZWWazVZZMu7CLbIqXssPiH8ac+tmg/Pl95Z
 +IStsGnZIpb2n0cKXtuELWAvWC9S6XJFOHKy/KL8iSe84net3ZzXG7ti74zVUkosxRmJhlrM
 RcWJANYaaPa+AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrELMWRmVeSWpSXmKPExsWy7bCSnO7JnB+xBic+qlvcn9fKaHH9y3NW
 i/lHzrFa/H/0mtWi//FrZovz5zewW5xtesNuseLuR1aLTY+vsVpc3jWHzeJz7xFGi08P/jNb
 zDi/j8liYVMLu8XaI3fZLZZev8hkcbtxBZtF694j7A5CHmvmrWH02LSqk81j85J6j43vdjB5
 9G1Zxeix/do8Zo/Pm+QC2KO4bFJSczLLUov07RK4MuZOaGIv+KFQ8W/zFNYGxtvSXYycHBIC
 JhLznu1k72Lk4hAS2M0ocav1LTtEQlJi2sWjzF2MHEC2sMThw8UQNZ8YJTY8vQNWwyagJbH/
 xQ02EFtEoI1RYsl3ORCbWeA5k8S+LjMQW1ggUGLVnqNgNSwCqhJfJ5xgB5nJK2AlMfmeA8Qq
 eYnVGw4wg9icAtYSz7e9ZgKxhYBKfk59xjqBkW8BI8MqRsnUguLc9NxiwwKjvNRyveLE3OLS
 vHS95PzcTYzgkNfS2sF44kT8IUYBDkYlHl6Jku+xQqyJZcWVuYcYJTiYlUR4dygAhXhTEiur
 Uovy44tKc1KLDzFKc7AoifPK5x+LFBJITyxJzU5NLUgtgskycXBKNTDmSizLWOKkdnyx6o0l
 l3Sfae/40Oso9TNnyZKH33TCGWUfTBOsclF8KPKk5BX7epmjb5pyZn/f6L7F21PsxQ/OGP2k
 kkPS68QTGZ8q37554pXTHq4rQacuxdyYcuqhjHOGT7vmo6i7x6cms39ek2P/d4etb+uTlSzt
 q0Nev9jN1t7BomnOpD5fiaU4I9FQi7moOBEADQEornUCAAA=
X-CMS-MailID: 20191217055105epcas1p2d2930402a559e381a7854f515a683d15
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191217055105epcas1p2d2930402a559e381a7854f515a683d15
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055105epcas1p2d2930402a559e381a7854f515a683d15@epcas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_215117_310620_579E90CC 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 kgene@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Previously, devfreq core support 'devfreq' property in order to get
the devfreq device by phandle. But, 'devfreq' property name is not proper
on devicetree binding because this name doesn't mean the any h/w attribute.

The devfreq core hand over the right to decide the property name
for getting the devfreq device on devicetree. Each devfreq driver
will decide the property name on devicetree binding and then get
the devfreq device by using devfreq_get_devfreq_by_node().

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 drivers/devfreq/devfreq.c    | 35 -----------------------------------
 drivers/devfreq/exynos-bus.c | 14 ++++++++++++--
 include/linux/devfreq.h      |  8 --------
 3 files changed, 12 insertions(+), 45 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index cb8ca81c8973..c3d3c7c802a0 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -991,48 +991,13 @@ struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
 
 	return ERR_PTR(-ENODEV);
 }
-
-/*
- * devfreq_get_devfreq_by_phandle - Get the devfreq device from devicetree
- * @dev - instance to the given device
- * @index - index into list of devfreq
- *
- * return the instance of devfreq device
- */
-struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
-{
-	struct device_node *node;
-	struct devfreq *devfreq;
-
-	if (!dev)
-		return ERR_PTR(-EINVAL);
-
-	if (!dev->of_node)
-		return ERR_PTR(-EINVAL);
-
-	node = of_parse_phandle(dev->of_node, "devfreq", index);
-	if (!node)
-		return ERR_PTR(-ENODEV);
-
-	devfreq = devfreq_get_devfreq_by_node(node);
-	of_node_put(node);
-
-	return devfreq;
-}
-
 #else
 struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
 {
 	return ERR_PTR(-ENODEV);
 }
-
-struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
-{
-	return ERR_PTR(-ENODEV);
-}
 #endif /* CONFIG_OF */
 EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);
-EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);
 
 /**
  * devm_devfreq_remove_device() - Resource-managed devfreq_remove_device()
diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 7f5917d59072..9aac2db956d5 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -146,6 +146,16 @@ static int exynos_bus_get_dev_status(struct device *dev,
 	return ret;
 }
 
+static struct devfreq *get_parent_devfreq_by_node(struct device_node *np)
+{
+	struct device_node *node = of_parse_phandle(np, "devfreq", 0);
+
+	if (!node)
+		return ERR_PTR(-ENODEV);
+
+	return devfreq_get_devfreq_by_node(node);
+}
+
 static void exynos_bus_exit(struct device *dev)
 {
 	struct exynos_bus *bus = dev_get_drvdata(dev);
@@ -353,8 +363,8 @@ static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
 	profile->exit = exynos_bus_passive_exit;
 
 	/* Get the instance of parent devfreq device */
-	parent_devfreq = devfreq_get_devfreq_by_phandle(dev, 0);
-	if (IS_ERR(parent_devfreq))
+	parent_devfreq = get_parent_devfreq_by_node(dev->of_node);
+	if (IS_ERR(parent_devfreq)) {
 		return -EPROBE_DEFER;
 
 	passive_data = devm_kzalloc(dev, sizeof(*passive_data), GFP_KERNEL);
diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
index e3633ae43349..3ed96426302e 100644
--- a/include/linux/devfreq.h
+++ b/include/linux/devfreq.h
@@ -254,8 +254,6 @@ extern void devm_devfreq_unregister_notifier(struct device *dev,
 				struct notifier_block *nb,
 				unsigned int list);
 extern struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node);
-extern struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
-						int index);
 
 #if IS_ENABLED(CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND)
 /**
@@ -413,12 +411,6 @@ struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
 	return ERR_PTR(-ENODEV);
 }
 
-static inline struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
-							int index)
-{
-	return ERR_PTR(-ENODEV);
-}
-
 static inline int devfreq_update_stats(struct devfreq *df)
 {
 	return -EINVAL;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
