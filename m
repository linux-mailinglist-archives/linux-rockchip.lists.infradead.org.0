Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD503CFB0
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMN7aJwXW5Lo/sytI8kJVCJ7BEGFw4F/a3GWWy/EhdE=; b=bzFlhigrnCjB9l
	G1zM3MrOiwiHPP7CDmWMGxZSlWxPSQTThXw0bRiGue1HHgpAY6fDeX5X1fzQF7irgnT8fYt/i3mn6
	TDlx0uiHrls8x7Qx2ucld8hwHXXEE1wYaB8T43/kRO+ZQta0ooD87ZVfNjAhTzTZhTE0sOTg8pRje
	sIhMB+/OkRDNuY6UHfdeNo8/BBJfLxiALAZXt6wiNaPyTVetLGAdtLlH16+VgsQKxoD0In3V2dhgU
	tSmUIqyZ8SimsSSmb9zRjp5cJzWTGafFUoGcvrhGBhACHRFy9RVYR09fEdFmnnuxTVhBuCFE2a/0O
	mLRH2BhYKqiWjmPkadbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBS-0007Q9-50; Tue, 11 Jun 2019 14:55:34 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBO-0007Ns-LY
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:31 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh12so5236260plb.4
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VZZq8s/MFgMQ4+KCax6f04xB7tKYUG01ZRKiMSlIBrI=;
 b=dpJlCAF4nB2sXe4pTDshY+JDucM4o9pomeDL15230IOt3GubJrLMCejywi54/M/XEH
 gA151hEH6+rYqxLOETqAr6yLvSojZ/YoGE7HJMyFrIirEMuKntCUsjDdjAH6ay2ejtHi
 ciU/hM9xDpDmXHDW3HxaGokR/Tk7y4vO7WAls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VZZq8s/MFgMQ4+KCax6f04xB7tKYUG01ZRKiMSlIBrI=;
 b=ogAKcECM/UGDAC2mHbJugiEyiszjXv71iV16C/ZGOu6rZHonC0Vs9v0AeFU2MaVnvt
 +pENHPkmbEXAglfmBpUD5NTkVvAT4xL6EbUbqyHY+RE2EGrZS3IkbwDBxZdLPQRZfEOP
 0JQ2DDKVt1qft9mtifBe1oYI6yu4HY5b/VK25sNDQ/jMVGd9oR8bfgbEdWOsS4k3Rfbj
 ClwAgo5SEr+bKaUEsexkXgugl9+lOnIjQTvLRrTWDuPxQHCnU5PalrP+twqsCByVAGkX
 RnqH/eLp2oq1jtCBCEsoIbRZ6TGLto2ZlLlGkCMTZmF6q5tVu0+6KDG3CMIXDkgkh4qE
 lO/Q==
X-Gm-Message-State: APjAAAXSg5rbtaOqBf4ZgGBXwrvmMtFW41iEcU+nRGTc4SHpfTgZNCA+
 Y4dLd0Ypl49UvP4lBKguqZ1G2w==
X-Google-Smtp-Source: APXvYqyIjvefk9GGkYKTTYabb8QFKZxVBZRVhkf0CvA94l+SSIVdS5rveYbcIDGogcfct/0RhuPeoQ==
X-Received: by 2002:a17:902:988a:: with SMTP id
 s10mr76935799plp.304.1560264930144; 
 Tue, 11 Jun 2019 07:55:30 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 55/92] clk: rockchip: rk3399: Set 400MHz ddr clock
Date: Tue, 11 Jun 2019 20:20:58 +0530
Message-Id: <20190611145135.21399-56-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075530_733248_0C0D30D3 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add support for setting 400MHz ddr clock.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 1de21c9f3e..79007b8682 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -839,6 +839,10 @@ static ulong rk3399_ddr_set_clk(struct rk3399_cru *cru,
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 2, .fbdiv = 100, .postdiv1 = 4, .postdiv2 = 1};
 		break;
+	case 400 * MHz:
+		dpll_cfg = (struct pll_div)
+		{.refdiv = 1, .fbdiv = 50, .postdiv1 = 3, .postdiv2 = 1};
+		break;
 	case 666 * MHz:
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 2, .fbdiv = 111, .postdiv1 = 2, .postdiv2 = 1};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
