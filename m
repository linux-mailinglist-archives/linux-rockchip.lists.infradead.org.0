Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D93B129A38
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Dec 2019 20:01:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FlS7/9+hiSzGoTClGwlQ715/GKH/S10IGOVAnYhElI4=; b=IdgPfhXx6QZA5LkhjgLmE9Fy6f
	CJxVpRNyhkgJ4mUdLjMErAbG1GBnIeW8JICLqrR3iKiVexe29LKCh+lyNFdyN8HWsUN1e3ENDkRgK
	+SCT0Sh+n/jfVirC9qkQmZ9aCsFcA8bJSKEVGy8EUV5E/ANd9ymy5DucBr2NRQjdSBcrJvSl/6Fti
	qTooehXBvIyh+G7lU7OcvPcY7g+fgmkBvUZRqDC8V2bsAKyg6CQNpoYLs5zjR/qQoSUN36tppPPmO
	JQTEBCPnJIqXoPF9rE6Y4QMHld1RqyDSWM/Mkng7qUYtU09PeJQJ7c+WEV3+udyIjoSUTQXaKkhW0
	CUg98JSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSww-0004th-8R; Mon, 23 Dec 2019 19:01:02 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSvQ-0002Wq-3U; Mon, 23 Dec 2019 18:59:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id p9so7518940plk.9;
 Mon, 23 Dec 2019 10:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bLznaHMy4KKZ0cyTMqudvu5r2Rqk/jELD1oKLNSR2dU=;
 b=RjgIjnGy+JvVdj2w8xB8Td7Jcp/uaEDjiyOG1FJNw7ItOBOMlDiBexx/UkW6dkkAGm
 voY0QC4zCFHaNyKdZbneErqsNlEEsUkH+mUTUEX4IGwRuLutautx5/QiGR7Dg54OfMF4
 Pzd2xf3gtJb7iLRKy3oLhDhaoannVg2g07KyLU/4m8Tg9yffQkks69i7RNV4T7iLy6Dw
 leXWNSpzbps7unh9oz1fwH+msb7iJL7CO2jLuJIISG1WX9/pxpG18Yu7So73y4H8ZtNa
 74d58L/NAst17PBprENwJOgzCuTFMGvNh/uHdQUQxylZpO1+sNfkhBafPyxxAqhwGPS0
 uB1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bLznaHMy4KKZ0cyTMqudvu5r2Rqk/jELD1oKLNSR2dU=;
 b=epb+MWMCI+lls8sRBfB0IsPGIZVJzE/zweRywsiEoMCDYiNqZNJfHfG4ScvLUMZW+y
 FoJ0Fz1BDQXXobVYj1IclNcOhtNtpUTuGkO/14MQU+HILYceQBrOZJGYgyd4NAUNYsAP
 yfHguWSizrKC/3fOygkCUE5wpz/CuzPCI4l6JcHTLPAKtUbFq1JEnt2ztARO8sBwinj1
 +3BJmnZEbOAM3hPWLwkATTmCxubtOcKy1poaFRvZmBEQaHf9N4EkrpkUuDM9HDiXjOVN
 jHCJC0gFwuG3fbWVG5cpATf+2gNdt0Jt3XdseFh/94Cvr/ppr78cx7ELk8/Lz3BnJHJs
 bF7Q==
X-Gm-Message-State: APjAAAXwHqRYdFJf+20sh+C9gkEe3yOvN6wjGp0qb7zn/LCRR4h5aSDm
 NIrH+E7N2fn+d4ELkKFfQKA=
X-Google-Smtp-Source: APXvYqwSmasDf38gpvZQ5kYkHfbJ9oeF2AFKtP2Fehgro57BEHYXKQsly+hr8s0/HHHdkDEArOHtIA==
X-Received: by 2002:a17:902:b788:: with SMTP id
 e8mr32700948pls.1.1577127567423; 
 Mon, 23 Dec 2019 10:59:27 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id x4sm25703139pff.143.2019.12.23.10.59.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Dec 2019 10:59:26 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: m.szyprowski@samsung.com, joro@8bytes.org, kgene@kernel.org,
 krzk@kernel.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, robdclark@gmail.com, heiko@sntech.de,
 mst@redhat.com, jasowang@redhat.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org
Subject: [PATCH 3/6] iommu/qcom: convert to devm_platform_ioremap_resource
Date: Mon, 23 Dec 2019 18:59:15 +0000
Message-Id: <20191223185918.9877-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191223185918.9877-1-tiny.windzz@gmail.com>
References: <20191223185918.9877-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_105928_180776_ABD805F6 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iommu/qcom_iommu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 52f38292df5b..bf94d4d67da4 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -709,7 +709,6 @@ static int qcom_iommu_ctx_probe(struct platform_device *pdev)
 	struct qcom_iommu_ctx *ctx;
 	struct device *dev = &pdev->dev;
 	struct qcom_iommu_dev *qcom_iommu = dev_get_drvdata(dev->parent);
-	struct resource *res;
 	int ret, irq;
 
 	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
@@ -719,8 +718,7 @@ static int qcom_iommu_ctx_probe(struct platform_device *pdev)
 	ctx->dev = dev;
 	platform_set_drvdata(pdev, ctx);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	ctx->base = devm_ioremap_resource(dev, res);
+	ctx->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(ctx->base))
 		return PTR_ERR(ctx->base);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
