Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D951734F
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 10:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVAyKdrkT2rHOOzIh9npebQWwY/XUv0I82iNy/ZeX8E=; b=PavbSK7NvM96s9
	/B/0TrdS5tW0W+1kvXYVEcC8UBB4ocmQHD5aV3jzLo9zItNqx/hUZFQCp9lqcA29K/OY99fDFbut+
	htcSdBvko8yPArXL4RZCUNK7R9743OZfvl8npw2qChfzIWy+OyNlgDM97TO1igfHAPMjDRaM5Vhux
	WvxQ7oIW9xpqAp2UbmkxaEO6Ht+BpL87QF8FhH6rUdC6aZhshM1cxUEsJIxcZEGVQKbmVLSBFfMZB
	fA3gphOceGjlfEc3IuTUHNx3gKRh4KW3qd8unZVxnj0OcXuszbBLXYhmN8P+TF8kYOxi110RZN6A0
	p8pSaRA6dUmJeI94Njdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHe7-0007zr-JI; Wed, 08 May 2019 08:09:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHe4-0007wz-Si
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 08:09:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id a3so463388pgb.3
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 01:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rmGkWdUXEAN+u9N24/e8pZdAG3S+WpbqZafK0k9TbvA=;
 b=LA9y5MaFddU4luB41adXJqSt+kjktN1IX23+M0ZJTgYy7oJpkJ06kuuzcOQHl/dq/k
 1hrxfNTTCJ8pw4gF7EUvtZNVraPP3Bhz1kzFsx8dx69KUQjOxIg61K14JRuSctTDiWeZ
 aJRgoolPC3wjGTzBtYX64rjLQ+WMfqwKLGh4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rmGkWdUXEAN+u9N24/e8pZdAG3S+WpbqZafK0k9TbvA=;
 b=TENTpJN6VMyi76YqiU0jl/BG/GzLVXj+taKqt7FU7h/J4iKAAUPkKLbwOK8oq5P8mG
 M//TBqr149hIUvis40kXCo3aTMzNBf0BD7ITVAdSKa0rtn6BDUL3Eeta7jZKkon9EWu9
 ktM0z0Vmfx36AECa66nL3o5pIpgUis4Rti+tTprbG0XRS25QCS8p7iNuyZ3UvKV4h1x+
 GHo9FnX4UrpnJtNjBDa316X2GQyxUepimaIelfAGdB5aALhj0R0GzzAO6Vxamvx/OCU+
 6DdeiOCqvnaXWjr4TVfHdwNkhnNhkq5HZ2A7zEbEUtqsobXv4fTwLwfFnOz/Ht2gf5Md
 KADA==
X-Gm-Message-State: APjAAAUzZUsN5Lzr+xLTLVr/eM9ic8Pom5jC83yYNVg0pQTCQm4MZp1z
 6XgjG7GXlxm+idT1+py5u7/kXw==
X-Google-Smtp-Source: APXvYqycddRriYri7EjIDBE3VJRKi7yx7wLMjo1BVsr6rSAwHad/vXOPKjq/rrUStK21Q2TKlS40TQ==
X-Received: by 2002:a63:9d8d:: with SMTP id
 i135mr28622896pgd.245.1557302984423; 
 Wed, 08 May 2019 01:09:44 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id j9sm33537133pfc.43.2019.05.08.01.09.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 01:09:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH 7/8] rockchip: rk3399: tpl: Mark printascii into debug
Date: Wed,  8 May 2019 13:39:03 +0530
Message-Id: <20190508080904.1567-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190508080904.1567-1-jagan@amarulasolutions.com>
References: <20190508080904.1567-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_010944_925819_3429146A 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
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
