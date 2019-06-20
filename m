Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6214D9DA
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 20:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVAyKdrkT2rHOOzIh9npebQWwY/XUv0I82iNy/ZeX8E=; b=Qgdkc0gfiGQZR9
	Fv/R79I2VTOQ5ACDSZMKTqCIBveelvURBPojY2MtyNrOxpISUIBKAHij2SHK2oGlyLq97StvqLJC7
	0ivJW19dXsJAO4jvhBTyp2scw2NLSF6ALm48gRsYiJSFgnyTB3nawULdi/H74iBq6eqtcU5ypYQur
	LfGIZW+KK1AvRwRMHsEQnJRmbonoqhDk4N6wov3IWxvqiSEt05hLR1rUahxheuWu6o/y+27ISFRCh
	edSrJtV6jYBJK7+14wUN4noR0FUzVtXqdu1wAK9D4uCExyjNf9S8wbqtIM75vjMLNMXGqUIGh9RTs
	mVKpkMnxDCO6BNTno+cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2Dq-00035J-4u; Thu, 20 Jun 2019 18:55:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2Dm-00032n-Py
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 18:55:44 +0000
Received: by mail-pg1-x542.google.com with SMTP id v9so2021578pgr.13
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 11:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rmGkWdUXEAN+u9N24/e8pZdAG3S+WpbqZafK0k9TbvA=;
 b=YODei6VUPdE0C3oFm9KyqHhgzAo53YPxNqANHugtrVToZRSZP6nikcH+w+S7V8+/1X
 Yovwr/8zNgnOHQOqHBEI/MrqI2FFWTmwAPopzioT94oBfINZibVxw8rHKBrjfG78tTXL
 NOfSVAjSbeeKQH8dRkSskxSE1qn0r9PaERadw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rmGkWdUXEAN+u9N24/e8pZdAG3S+WpbqZafK0k9TbvA=;
 b=g7ddcf4L2vbeB09QigROxlSfLc/LYu8CHqqMu6yVSEhkr4G5qkjNyoxiiFZCybt4eu
 Msl4Uv20wyybsX6K0eOmJL33HEdWszp++7QlAX4l4MOF9dYb93QBWAyZImjWSv903oVU
 OKhoDCgaUcAv7O5McSyF1HXDLxvlVFB/SYOzrCSE9EezlaIH8EUb+/2S+SyqBWcvPWov
 48E04BHq+FB7JW7kGAARNK3BlgZ1xnkq70WUVFygXCsIEhibQjO6igO40prTGLFNG1qz
 UUD7mJoie6z3cgt5HqX87NdPzGPOLcFX8fErMa8gBjF/9Y4qP94giMKqavBdUBgmi+w/
 OvMw==
X-Gm-Message-State: APjAAAXkmyQhmnr8tOra0OsZ/eUn98hq2X88fo6iMkj0p/9WfnNSKgHS
 dsE8MHKzsVJ7ijJHney12Xsabw==
X-Google-Smtp-Source: APXvYqz5exAY1k4y4+1/NQY7S/fntSiRze5BKE6rAcGn57awlqED5u8+YrxK7Fe7P/X1tl2ISj3sxA==
X-Received: by 2002:a17:90a:3086:: with SMTP id
 h6mr1213422pjb.14.1561056942166; 
 Thu, 20 Jun 2019 11:55:42 -0700 (PDT)
Received: from localhost.localdomain ([183.82.225.128])
 by smtp.gmail.com with ESMTPSA id k3sm372183pju.27.2019.06.20.11.55.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 11:55:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v2 7/8] rockchip: rk3399: tpl: Mark printascii into debug
Date: Fri, 21 Jun 2019 00:25:05 +0530
Message-Id: <20190620185506.11449-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620185506.11449-1-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_115542_932184_0B3845CE 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [183.82.225.128 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Now, we have spl_board_init which has TPL banner prints.

So mark the 'U-Boot TPL board init' print into debug.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/rk3399-board-tpl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/rk3399-board-tpl.c b/arch/arm/mach-rockchip/rk3399-board-tpl.c
index 72d0dd914e..4a301249b4 100644
--- a/arch/arm/mach-rockchip/rk3399-board-tpl.c
+++ b/arch/arm/mach-rockchip/rk3399-board-tpl.c
@@ -47,7 +47,7 @@ void board_init_f(ulong dummy)
 	 * printhex8(0x1234);
 	 * printascii("string");
 	 */
-	printascii("U-Boot TPL board init\n");
+	debug("U-Boot TPL board init\n");
 #endif
 	ret = spl_early_init();
 	if (ret) {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
