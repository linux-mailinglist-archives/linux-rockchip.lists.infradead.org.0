Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B151734A
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 10:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cejVQizehf9V4hVwA1LkD+cqgpiEpQIEqjg19uWyZ1I=; b=t+I5O23D5bHyTS
	LSPf3TLoNHTxl3SJhxQWrRGaUjesfL21KID/8LXZzHvzYxqk9DBpvkDOffhZMk727ysNxoJwxYTtW
	p8L+hrPXTAwAAlISNHFwHbWhamSQUC0foeqL1YYYBMDn+ohqDo+16YEOxYQJOk/UW8l2EUXVpj5po
	wPE8HfpCAem98SywRKKEPdh3qY4VLG4hKnUMbcP/jhFOf2TOqh3JeRoT/yBmRDlx43a2Yph2ZsgGL
	SIj+P0ktM79kUI4s1zQ13bO9nbh5gSblwIhSDqBvE/M8tjHPb9dyktzUe9zzjT6zW3QesSxPq1lwt
	rR/7bb5xNnOkYe3/LnDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHds-0007my-84; Wed, 08 May 2019 08:09:32 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHdp-0007i9-HF
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 08:09:31 +0000
Received: by mail-pg1-x541.google.com with SMTP id h1so9714465pgs.2
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 01:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AAXI61OqcQB2c5/+Po/kCTfrIbZ4kPTlhPaXAjgt6hc=;
 b=dyFwFRAbJqx0mx6Jnpa4XfjpRbudnGhV03TKBNVwdZlZRAXnRXdcjYIQt2AId9qWu0
 P685is6DzwdelZmEQR6x55yg2e0L1M2hFa08T1rt7UzpUbzySHtkbS+h/ZPLrT1LWr9R
 sF76w5xU8RCl9ZlmK3OBQkJIfrHp1UENv05j0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AAXI61OqcQB2c5/+Po/kCTfrIbZ4kPTlhPaXAjgt6hc=;
 b=X96bD7/JiW8WZZrfPIBLLQItoowtEXCrCqCcZ9QvDpcUjB77b0uONdE+i77Y4/VPzB
 L8ZjSHdZlgmRAMV9MPax673WsUdtU4zyJLk03y0g8Th+GOdEuqHfIZ3++As0kiitTW6Q
 GQMNFQLTfAvobRCC/uZIlF/65JKL25+hdNRFVMCucByFQZzKzqSuftg3+VZ0B3FMz9Dw
 xBNed1/Lirfo/dbZCyPTZZltaRI++mGFmVmYNwg5ER/30zP/+8urNebPltnsGsUSz1M9
 36mughXHe4qivkl5TMmeBi589LIPauJvn10n6KT0MSixRaPFmzlSWr3mYajazSWLc6He
 BNQw==
X-Gm-Message-State: APjAAAU6wjAwJn0+FXQLvQWkQZzR/zFK/WHCLxuozNhfjctPYHmcl0tF
 IQBivrDe0DI0FyoLIolYYTe+qQ==
X-Google-Smtp-Source: APXvYqwKEz7ovgCKTPoJ6Xjmnp3K7H+QxCZdE1XxHOtiq1I+3eQWrwl5QTq0M2WBhWX4LpefQo+i6A==
X-Received: by 2002:a63:c64c:: with SMTP id x12mr45171483pgg.379.1557302969071; 
 Wed, 08 May 2019 01:09:29 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id j9sm33537133pfc.43.2019.05.08.01.09.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 01:09:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH 3/8] rockchip: rk3399: spl: Mark printascii into debug
Date: Wed,  8 May 2019 13:38:59 +0530
Message-Id: <20190508080904.1567-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190508080904.1567-1-jagan@amarulasolutions.com>
References: <20190508080904.1567-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_010929_760566_A2DFC141 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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

Now, we have spl_board_init with preloader_console_init that
indeed show SPL banner.

So mark the 'U-Boot SPL board init' print into debug.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/rk3399-board-spl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/rk3399-board-spl.c b/arch/arm/mach-rockchip/rk3399-board-spl.c
index 058acdfe39..7a994b37c1 100644
--- a/arch/arm/mach-rockchip/rk3399-board-spl.c
+++ b/arch/arm/mach-rockchip/rk3399-board-spl.c
@@ -164,7 +164,7 @@ void board_init_f(ulong dummy)
 	 * printhex8(0x1234);
 	 * printascii("string");
 	 */
-	printascii("U-Boot SPL board init\n");
+	debug("U-Boot SPL board init\n");
 #endif
 
 	ret = spl_early_init();
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
