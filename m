Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4C478699
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nhv2gChpS+NVmxYYE/b1GCtTOsLCI1WG8VrU5gVSRyk=; b=KEJirmadDskpaE
	JWr//3nQ4j3BuiHA/5rvNMFsrtJt+PDuGLO56vdXynjRQ73sS4tqXS6jvcoZ3DGaEFljkIE0eJo36
	qKLPv4eQbHNeXB+Fmb8DaWRksTD9PWPV/KndqPklleBhIV9MwSn8xWpyww1YZMtySq9Bx2+QBsqz+
	pReUyQxq96rTA8GIjn1zv4oe2qPd+iWMkPb51NdtSVegR1fjYc06y0hyM6J2tt5oC7E0KcOUqQbp+
	pJaAnpTfsHA9G8KNdGUMpYuvB6ZEuvxJoD6I7w7XX6DYalbiG03smVdTidCME1sCBuQoYm5sOysLi
	4DQdBYAbUluWMvaQ58zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0Nq-000225-UC; Mon, 29 Jul 2019 07:47:50 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0Nn-0001zl-64
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:47:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so27549452pfe.11
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wq6GJCz6OpwvPx36T+BmHN2obhM+vzYcJ0vK8rO0YF0=;
 b=fMgIoiW3ShlTeR49mIXtuaJOrS2+VvqAOtXphwDgXhjrczEtt3yomfLVy2IIfGHkeJ
 L5q2EZQ2xPSNZ6g1nTjLCME5LCBH7g+OA7JbsRNh2klcvFv3KewFW4DJ4paBFS0BCr88
 MR9PIidsVH9QkmXSEHpq2N4detN75HSboL/fA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wq6GJCz6OpwvPx36T+BmHN2obhM+vzYcJ0vK8rO0YF0=;
 b=N6pS9DpwRWrIFAR6gec+l09XyuoSu/U6ge8bnsi3QPIMaP0pu4PtWySEC+KX0xfHOF
 sCkI3o5zRm3JmHXMG7Kst259+0DOIriPcth4H6ZVVIZcNv8IvuCsLl8Ef8jM8BbPV9Xb
 fx1thEtYWhNGYm2HOCQghSigW6Ccz451mqRYYiympT2v0J2OgWmACQBWD69tXvvu4VX1
 dXmhmlfu98GTJj2g1YvOFPF2vFjfcXTW4NJfjwabcvTMegU7E9zaF2jGSCT0f+xsPOJ6
 WdtFVGT8z3XxwDBrBKsbKre0+LT/ZJfj5gKOiJFyML3Ie64QyGz+iWBBqQ5/37EXXsZR
 9y2Q==
X-Gm-Message-State: APjAAAVQKyizNw38ffax6qcWlM4YFdP7chpNmsZuQmjlsdwb+uT/kZcR
 /S+MR8W6AWc3FNzi5MfyqXeypA==
X-Google-Smtp-Source: APXvYqx6jowZR9X/srplpGIul5M/Ov0Bf5aMwlX8osvQf4Szvil62gsF4lfHtsOmQ83IkCLxZfTqTw==
X-Received: by 2002:a65:6547:: with SMTP id a7mr81906381pgw.65.1564386465884; 
 Mon, 29 Jul 2019 00:47:45 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.47.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:47:45 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 06/15] wdt: designware: Simplify is_enabled function
Date: Mon, 29 Jul 2019 13:17:02 +0530
Message-Id: <20190729074711.16988-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004747_277318_635768F5 
X-CRM114-Status: UNSURE (   9.74  )
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
Cc: linux-rockchip@lists.infradead.org, Chin Liang See <clsee@altera.com>,
 u-boot@lists.denx.de, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Right now the designware is_enabled function is using
numeric number to check whether watchdog is enabled or
not, so use register macro and check the same.

Cc: Chin Liang See <clsee@altera.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/watchdog/designware_wdt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/watchdog/designware_wdt.c b/drivers/watchdog/designware_wdt.c
index c668567c66..bd858f0608 100644
--- a/drivers/watchdog/designware_wdt.c
+++ b/drivers/watchdog/designware_wdt.c
@@ -45,9 +45,7 @@ static void designware_wdt_enable(void)
 
 static unsigned int designware_wdt_is_enabled(void)
 {
-	unsigned long val;
-	val = readl((CONFIG_DW_WDT_BASE + DW_WDT_CR));
-	return val & 0x1;
+	return readl(CONFIG_DW_WDT_BASE + DW_WDT_CR) & DW_WDT_CR_RMOD_OFFSET;
 }
 
 #if defined(CONFIG_HW_WATCHDOG)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
