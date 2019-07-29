Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CFD7869F
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIxJDFw/eIf9mmoVLLKcOW2NdGMA7GmbYGuO4nm9Vdo=; b=K1hGfGa0RzQHuQ
	qtLI/ku2ikVgwQ2VF3ssj5DP8lzj8M0bFrKf+Hw4vRH4wxsW4whgntfwfYJf3VbuxBmo4jfUZhb/6
	74RVzRKzO8U0UpPI+LrEeuInTJLW2FmI3JzGIUrvJkLKAeCcv+NqxzUo2/UZpnaw+b5vtwka6araS
	waPd8motFREpli+5fv2cK4u/Pd9wyfFb1sYa9C6RTKXpcysHu5/lm3UBgAzP+ox0WNwqbUE/tOqBX
	ZbMx5jEc4maqKwc4GsErFXfjr4KJV6KbVBGLjZnVK5Fxhr2PItUVp+bRrit4viGwTYRP2sfCu6hw9
	foDM+I+TmNpzR8J3aK+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0O6-0002NE-SL; Mon, 29 Jul 2019 07:48:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0O3-0002Gy-AC
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:48:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id f17so23586183pfn.6
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lMkAjW3GPc3JRQvbVP13XvU/Mvzd6g4b+EvCVNCUb6c=;
 b=K4BETp5cfQBTIxgNhBbjmqewPrt6c84L0iwP2e3gWoI2FezIibQcTe7zmOGmOKdcTG
 KRsoTTK9uXdU7ukl2YVVrrhi0BP5oLm+mKBUxs9r/WMzJ628MsU3L//M+PrRoJIrr2MD
 wWrHJdszYUS6qnLZT+/DdLV+K7ZAQIAh+xcjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lMkAjW3GPc3JRQvbVP13XvU/Mvzd6g4b+EvCVNCUb6c=;
 b=qHMDQHmvOqeTzZUauAi2wWzh3MtMp1ZhWrrG05+2z42TqblZ1ZcANKehotKwpPuO0/
 bc9tvzHT4IwBS/aYF8UCjHgRr7r7eH9uuPlu3301WfMoUxp0e4z40vyz30mpdxVuwxku
 z5QJ+uUDsb7dOfEg10eA3ghPBmzO45SPnd5phy9Zux/1tVBKEqv/ArGCphT71Vlc16I9
 6iU/v1HRbTjeAOPy8RDeEDJtENGBDP2AWdUWGwKDEJD+3a8Gh6Yw+HZCYbK3deKndZSh
 Nr6Ss2FoXqC0bCMm4fBbH+Q2b9mfVasSIYA+Av8TUWg1YGyAZ9pjsnvmcFX8nXZ3qrfF
 VlSg==
X-Gm-Message-State: APjAAAVsY/jGSGen7Mu+71CB7DjsBRduReWafLxpCB7HFhZ1ylk+mad3
 J0c0T89M9gwgzObUjgm9c/kzjQ==
X-Google-Smtp-Source: APXvYqwOXQxo+NIm8u8hg/lQpG05a3iNuDpn/HimbMFXFVkTTj2Y2v3oY1QnThZkDSdpWbrr2A3rew==
X-Received: by 2002:a63:544d:: with SMTP id e13mr13856042pgm.143.1564386482744; 
 Mon, 29 Jul 2019 00:48:02 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.47.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:48:02 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 10/15] rockchip: dts: rk3399: Add u-boot,
 dm-pre-reloc for watchdog
Date: Mon, 29 Jul 2019 13:17:06 +0530
Message-Id: <20190729074711.16988-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004803_376606_85FCECB4 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add u-boot,dm-pre-reloc property for watchdog in rk3399-u-boot.dtsi
so-that SPL can access watchdog.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-u-boot.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index 2738a3889e..54286b585b 100644
--- a/arch/arm/dts/rk3399-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -3,6 +3,12 @@
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
 
+/ {
+	watchdog@ff848000 {
+		u-boot,dm-pre-reloc;
+	};
+};
+
 &pmu {
 	u-boot,dm-pre-reloc;
 };
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
