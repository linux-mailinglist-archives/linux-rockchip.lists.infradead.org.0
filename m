Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A926012C1E5
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Dec 2019 09:20:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fJpSMWLiDgu6pfsoeziLyf0tvHRVzZrFZI+r8bpSm7o=; b=GYOxJg90zIf5mqoSFg6qMMlho1
	/4wgdJu5b/3p7po10fROOls8t+94BbTYekNKRoenUY1WZgqFhaH2tAxTKRkkY9uA4qFOZgVj1F5L4
	4DvtU44vBZKrRmIZk9jJvTKbDKx+QmqFLL5XrHm1cxk3XtbDELlxx5FYKH8lrfuaeNmcdQbJbTmyn
	Pb6qTwUDoOWUA3P3VwyO48zSMFYbOzsls3/p+Jbfb5AE49ZNYz2JclVMAwlApQ1WSwuxC17kMDVmV
	YwVCjWABs36fKg8KvUoCOYas45ltVlYGmLxAHUbSz4erkuHVwrALC/zexYkXhRxaIIlCT8ETeW81R
	kATZlNdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTnp-00070z-8v; Sun, 29 Dec 2019 08:19:57 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTb0-000191-M9; Sun, 29 Dec 2019 08:06:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id x8so16611271pgk.8;
 Sun, 29 Dec 2019 00:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QqO5VBiXqI5R/AkeosruSZfCprSjGDAM7LFQWexsUTE=;
 b=bRiIae4rFd4anfrYHa2h573t4PCyijpCdCIzqXN4J00te79dFDRkflXiaVWf9P/axv
 z+DsmrszTYuySWTdB6ULOta5nuNYsyR3uMXjYa/TrpX20GJDeDxZV9D6gFgpC5aB9jED
 elc3AbtukjTYhep55znmAuIrGhh5OuVF090UIpJaVxMb13YlyHeqcOpePr0Qxa5AGotr
 4mF1TMGUApsiYzXwC/OaIiKBB1yekSF9awgj4zKaIbT+7CGKAl7wqGu+s0RL+WlyRNlU
 bWuTj6WuXh846VITN/gmh9GRqv1SUvbd9Svau0W5uLjTjE4taI9XKDEZRS0H9L/nSooN
 ZLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QqO5VBiXqI5R/AkeosruSZfCprSjGDAM7LFQWexsUTE=;
 b=cpMyB6IQXYYNfcC6i/RhJPSF7bajXWmKO9EQwxrp/PtrFAB+8CfiUWE+5JDrk0YFDs
 eQJWK5IIpg7GNeX5OoxskPf6l+byweaiUB9ymGlzgBHKHWfyZo4s2aynqKlbUNCS0YKS
 QIWNll3yzVpy6qGvM+FCQGC7gNhDiCdyxOJKFi5p1voTxVwBOIFigjF0hCd5T1GHAUbB
 Vs4Fdtc+7L4osAADURdTXGAp9/3cX0q/dptc+Tt8WgUPtEay5mgPsJk10qKZSz7R6a80
 LtKYy1m7RYqebEPZyIn3qWnFNNbkX26raFMBwI4SvSXa4udxCMqofSCHMs8Q3FMpBsHz
 vPsQ==
X-Gm-Message-State: APjAAAXEg2X0T2AeLngfoXH3uMV8wZLi7siYbVKbbgKBXZA2MvsYMvuz
 e9SBGRgO+wl41MN4TBiBOvM=
X-Google-Smtp-Source: APXvYqwFZI+a++Hr3wqoZg0IjafXaKUi175/ltviuoWC/h18dtap63vpF4U0J7a3SLRMilBNfyFKcg==
X-Received: by 2002:a65:5a8f:: with SMTP id c15mr56634028pgt.259.1577606800818; 
 Sun, 29 Dec 2019 00:06:40 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id z6sm32913761pfa.155.2019.12.29.00.06.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:40 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: claudiu.beznea@microchip.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, f.fainelli@gmail.com,
 nsaenzjulienne@suse.de, shc_work@mail.ru, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, vz@mleia.com, slemieux.tyco@gmail.com,
 khilman@baylibre.com, matthias.bgg@gmail.com, heiko@sntech.de,
 palmer@dabbelt.com, paul.walmsley@sifive.com, mripard@kernel.org,
 wens@csie.org, jonathanh@nvidia.com, linux@prisktech.co.nz,
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH 22/32] pwm: bcm2835: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:06:00 +0000
Message-Id: <20191229080610.7597-22-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000642_860501_11E1E317 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/pwm/pwm-bcm2835.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
index 91e24f01b54e..9923cd2f069e 100644
--- a/drivers/pwm/pwm-bcm2835.c
+++ b/drivers/pwm/pwm-bcm2835.c
@@ -137,7 +137,6 @@ static const struct pwm_ops bcm2835_pwm_ops = {
 static int bcm2835_pwm_probe(struct platform_device *pdev)
 {
 	struct bcm2835_pwm *pc;
-	struct resource *res;
 	int ret;
 
 	pc = devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
@@ -146,8 +145,7 @@ static int bcm2835_pwm_probe(struct platform_device *pdev)
 
 	pc->dev = &pdev->dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pc->base = devm_ioremap_resource(&pdev->dev, res);
+	pc->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pc->base))
 		return PTR_ERR(pc->base);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
