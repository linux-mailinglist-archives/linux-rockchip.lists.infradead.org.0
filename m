Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B6DD99A4
	for <lists+linux-rockchip@lfdr.de>; Wed, 16 Oct 2019 21:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R00AYHyqfR8HeWI4d2fB0GxV0J8MSUaESkuAOOiTxo4=; b=CzDMn/a37uen/O
	GHuaCy1zm67YrbeOAf7zXwClfcx2wrgJK2JiSkhokg0JqEzaEPiCTdRHHVMAaA/K6O4NXvNq1zHR7
	QzS1O+oukjXQQL3fZK7tsD4oj6oqZ2EJ5mYPET6XfzL93UyjwTJNHzkjxBIkJqDGJm2kaR0fWKw0f
	th4AQf/DSdVxGb1pGb4xPLIRgnFThepdEbVd43NQ4+rSlhtL5Bd3A365bx7IgkFaDmX3rmT6tGXEG
	Wzyq7VU6FuC3pWlbs2qS48BqIbGGlJWsEiSCnMGy0sCvdMn+2WEZ6zorcMqi6ECj7mdQmSZTvoRl9
	G6a4FEnfx9yomKwgzq9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKoYU-0005A2-Mj; Wed, 16 Oct 2019 19:01:54 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKoYR-000591-Fj
 for linux-rockchip@lists.infradead.org; Wed, 16 Oct 2019 19:01:52 +0000
Received: by mail-qt1-x842.google.com with SMTP id v52so37691589qtb.8
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2019 12:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RsrGo5Bjo1zIXD3xhW5UUYBBTJ2T9XgunZeRF5qm1UM=;
 b=LwiI6kHf3v74Ek0fzzPaJTZbNl/kz4ELK3VeRInaOLNdQYjWQ4ZNHNDl8ZgPIyMLvI
 iBxGFq1w/fAcstvQZ75lyX6WFTU8ZFXqUeDK5fOgxpKDfkICT7UOePRrXAPZwwAiGmzf
 C3TySvkjxzvKVju9vIymCbJSZ+bmb85LT3BAm7Wmrak+PfsUGJpkWavfmmFTBMAA8eH4
 twrndFKC3hWcbScaJUYVojynNy3qiFUzLjLvb0qBtFp/oZezGYYUOm3Uznys80umQ3kh
 KqYvnm5U2/HcEzQxRwnWMqIXUuFLGJa1kTXZTP2+o7+rh+BgXToYD9h203fmzJTWgzCq
 xj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RsrGo5Bjo1zIXD3xhW5UUYBBTJ2T9XgunZeRF5qm1UM=;
 b=arC9ocs78aysg+MD1ek4da9lY08ugs50AJwhHMPqsjvwdyd/ZIvSrSW0CGBzzRUqh3
 +vbhfdIm1TAWHQtAngN6Qndj5nYT2bHYBn6XtnItVwNstMtqpGhsyt2s2wxjFb8dpAeK
 uRDLxTJL8HeTCXhau/2NFTEpcW/E0EezJDG44GyePAgC3N40/PNa12L+mU032o1a/ALs
 OtTvUjYQilFFE9YFeKwpdVTL+YKoijv6XXw/5rPXf0/U0iBkygzofRG34iapfwTXpesD
 Tm1HyStTm+M9bvubziW8L02LAtytIjRaO/F32WHjcEc8hj3AZiiGAT0jqEzURvBAquhn
 SA5A==
X-Gm-Message-State: APjAAAViKIbJq7dKa5OO/FA632kdH+QG44Cgw1wqnZUVeqYLg37MGPsH
 L+EwcFtUmjEs4e8HYv1+iXN8SVY2rQzQbw==
X-Google-Smtp-Source: APXvYqwjSRyKp72jCDw/3eALuilLXPHJwnQRFNQ/isZ8AlyqVF/yOyGe9GJcdY9AqZ96E1r2AaAXpQ==
X-Received: by 2002:ac8:2727:: with SMTP id g36mr41669040qtg.202.1571252509732; 
 Wed, 16 Oct 2019 12:01:49 -0700 (PDT)
Received: from firefly.sparksnet ([2601:153:900:a52:6f12:874c:d2b2:a9d0])
 by smtp.gmail.com with ESMTPSA id x55sm15266195qta.74.2019.10.16.12.01.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 12:01:49 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: fix sdmmc detection on boot
Date: Wed, 16 Oct 2019 18:59:46 +0000
Message-Id: <20191016185945.1962-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_120151_544607_69A307FF 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

With working GPIO, during init the GPIO state s reset.
This causes the sdmmc regulator to shut down, preventing detection.
Removing and replacing the card will allow it to be detected, but that should not be necessary.
Fix this by setting the regulator on at boot.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index bb40c163b05d..8d553c92182a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -35,6 +35,7 @@
 		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&sdmmc0m1_gpio>;
+		regulator-boot-on;
 		regulator-name = "vcc_sd";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
