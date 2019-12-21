Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE9A1287FD
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1i2WQhe+5LoaAuTFTQknJWorLR9mtldS0cSJ//cOd5A=; b=eROwCUSrV2OWCj
	auOF85lKuFlas9p5p8Mn+V5mdjvkYOuok2xM56fAWTYYRlhm1QMYMZwEK0pxJWmLemKntQ/NoJUYh
	rqg7XiXhEDhy5ryoLjZubQ48xnlrlv2lwvqVqt/AygfdHXNF4MRjGnUoH5EsMD3Ou40s75nC0U72f
	ZoGi38Vz5rHCErdgCcXA7AIR4weAbkv/gAnH0ym0iW1N/NMteoi1NYcmtT1HHZ0XMHKQnbtP+9Wxo
	3/PqwQh5X3I70c/UQ5fZ8/pyy5ee2XMH86TgS5rFqiRV+k3srf0Nv14T14SktykCupwLYpPD1Q5k2
	fYf1Rtgook6QmuYdI16w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbU-00068d-HU; Sat, 21 Dec 2019 07:55:12 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbI-0005Jg-PR
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:55:02 +0000
Received: by mail-pj1-x1041.google.com with SMTP id u63so4591815pjb.0
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lYNhFDqASRdOPyZEBfOp9gs20cntUjKWm7qO55vCvyc=;
 b=FbQ88WBFibpa0HkjuEPhLV+fvvXcDkH0cVQDv4Pk6xXFhcd1urxj1sBtdSPr66wS3n
 31MClBRbOEcpcuiGqhWkL9KCxgBONzQgo/kOYwyVXTnavbXH105ep5ytMtj7aWCxdNrE
 kmFuedOUbEwHDLvCH7G+ydA9yvMxgJpbGeA2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lYNhFDqASRdOPyZEBfOp9gs20cntUjKWm7qO55vCvyc=;
 b=WFYgC1R+NlWYKv8pNDVzL+WzqXLEkK7OrwIJd5jcZNtPgkvLpC7AKgXqADO2qsF5jN
 x+1O6hhyzwmQGuR545TQg5jT9tYDpb/yswsLBICEdX8m10XJXHjWsqtB1FzqAI0SlA/k
 PDO1d9WIlUDCJMn88XnjhYEUdDA4jBpefRRZb1rCgm83+9rIiS+1GSVlUf2KZ6dBUNjC
 npBhXbd2V50INU4Hx9VED/iyMpf2NzekxWNIaAsbjcH1Yum+pJNt+8Z5Fuzpdifpk921
 Jf3pCDRaDL86Sgjtt0WOAfXTd5FLutPNa058TtrzwGVNFWxAdqdonL3xMke00ThyTkt5
 olcQ==
X-Gm-Message-State: APjAAAUpZt8Xeg6FQzwHt5JSYLlctb3hMdP5YOHY0pZHqcNem4+Jrj9i
 ixLof7Pho3Grza4dCprOyU9pZwcti1w=
X-Google-Smtp-Source: APXvYqx+ZTWCDFYfwvlS9oRDrHi3xtaUK3wQUL0+c43uo058/181ySTqNV+h/yqQqAQ1RTnNnNtZxQ==
X-Received: by 2002:a17:902:820b:: with SMTP id
 x11mr19733982pln.196.1576914900253; 
 Fri, 20 Dec 2019 23:55:00 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.54.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:54:59 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 03/11] rockchip: Include SF on distrocmd devices
Date: Sat, 21 Dec 2019 13:24:32 +0530
Message-Id: <20191221075440.6944-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191221075440.6944-1-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235500_821218_E2B48660 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Include the SPI flash device on distro boot targets.

Included at the beginning of the target devices list
since the rockchip platform has a boot order start
from SPI Flash.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 include/configs/rockchip-common.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/configs/rockchip-common.h b/include/configs/rockchip-common.h
index 68e1105a4b..4e6d6e98d9 100644
--- a/include/configs/rockchip-common.h
+++ b/include/configs/rockchip-common.h
@@ -11,6 +11,12 @@
 
 #ifndef CONFIG_SPL_BUILD
 
+#if CONFIG_IS_ENABLED(CMD_SF)
+# define BOOT_TARGET_SF(func) func(SF, sf, 0)
+#else
+# define BOOT_TARGET_SF(func)
+#endif
+
 /* First try to boot from SD (index 0), then eMMC (index 1) */
 #if CONFIG_IS_ENABLED(CMD_MMC)
 	#define BOOT_TARGET_MMC(func) \
@@ -39,6 +45,7 @@
 #endif
 
 #define BOOT_TARGET_DEVICES(func) \
+	BOOT_TARGET_SF(func) \
 	BOOT_TARGET_MMC(func) \
 	BOOT_TARGET_USB(func) \
 	BOOT_TARGET_PXE(func) \
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
