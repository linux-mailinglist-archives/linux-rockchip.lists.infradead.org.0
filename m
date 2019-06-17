Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3E847B81
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=396/t8f7zuJWhqQic0GygV7tnaaB3UIdhA+tURmIfAU=; b=k2GuwrmTpx5lxO
	5X/3n5D+ZxhcClb8g72dEpjEZWeQMZOIwcdaed+Ld1aQQWKLetyVTQogLyu1zDFG8JjqZWZ1QKfBg
	RKfFSo6GbAHtGSaCBLQCXc5lkXBvZmHbDOsb29P94WZ0lhCXR/J4Ds0kVRtHYBAQ71ULAXGZcmPka
	FKwOOiJ0KccfFmc14MY+vEW7v3R7+bKV45r1kxKGjpZ7GBiHVf/ZqHQR174BlioqzGYUSvIK59lFP
	pAcxl3logzm0NIwnMrf5o+pnxEDAv+xL0X8qsUwVskKyGgOqYF4djTsjeGi2+Qxz2FMVo5QYJjaWI
	kfHAH/iBBxFS5PxRb5gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGu-0002MM-9M; Mon, 17 Jun 2019 07:41:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGp-0002JY-E1
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so5323848pgl.2
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8xq2gqZHbhG87/OJ2+pFrODCqy5+k9oPr3okcaxeH2U=;
 b=SQuI8rmlvARhHztI0sh65btIJrMR0NGufJup7PWMpxz75SCxoPOIk0NLXNq+0r5UT5
 i0GWTJBwwQw9TzUhG8qvzZbTyDnQwY7RL2KAjvcBR3h1WaDzAd9W3OD7GlDDlrUFVQgN
 +1fmXgxtaPWN54VyojWadaWGIVR4xXsmoB6mY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8xq2gqZHbhG87/OJ2+pFrODCqy5+k9oPr3okcaxeH2U=;
 b=U+uB80nm11krItc6qyWiT12UWbRmbTswwjyRQzgL8bDS4Rck6/wky/k1nJZCInE5+o
 gVdSaB94VnK7GOBsXJY6T83LdqOmBeb/1uReIVE8f9iB7lR6utMpL7FZPZkkRtq01IjZ
 SyYWTfF10IgAI6dgYYIA1OZrKI1Tqk8hDa+Cs195c4Ni/dtRxNDfB8QkfzOaqj1reOCn
 Y9S3b/XB+tMdyKvtoaefG5LKwHwnIIqs03oRb/ekgfLr1O3dJX2xt3m/uujYxGh8aord
 ccyk/P/Lg3bnLPcRl/jSelzD445zugRaRMdqApOaZz+kxC5RLyu1ST/DW5Id5MlAe4SC
 7YYg==
X-Gm-Message-State: APjAAAWpffaM9vmMA7fVUk6bCBSyxY4f9xYC2KVVJTMeyqteEPTqQndm
 JyjtW6oLIFBxc0JYUNFXuBVDCQ==
X-Google-Smtp-Source: APXvYqzhlx2SDWv9q0hqwUnS+Jg+9hXSQVGo7Nueg7kOo9NqBwgkVoyZWGGV0a3oGQe6gho+aJVytw==
X-Received: by 2002:a65:41c6:: with SMTP id b6mr46915855pgq.399.1560757298896; 
 Mon, 17 Jun 2019 00:41:38 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 96/99] configs: rock-pi-4: Enable LPDDR4 support
Date: Mon, 17 Jun 2019 13:02:49 +0530
Message-Id: <20190617073252.27810-97-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004139_577115_574105B1 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Due to foot-print issues, we have LPDDR4 code can be
marked as CONFIG_RAM_RK3399_LPDDR4.

So, enable it for Rock-PI-4 board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rock-pi-4-rk3399_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index 32da77aa39..d667cf2124 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -28,6 +28,7 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-rock-pi-4"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_TPL=y
 CONFIG_ENV_IS_IN_MMC=y
+CONFIG_RAM_RK3399_LPDDR4=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
