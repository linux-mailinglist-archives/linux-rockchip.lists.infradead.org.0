Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6084647B47
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSkcnnmuZaBjltJ279ig9ZLL/yIMHx82WI5p2Mg+3Ks=; b=JDDvBnbey9r4r1
	MQuJW+X5eWFh+n+nxxw/hYY2NPc18ol2RxmCO0c3KOf0r4QInI79r5ByRK6KZbmqpbfOJp4300CM7
	uAnrmzbA+asO9npK6b5cRjZmjA9deymfFA9ljL5wuHxUDXiY71bFMNme+dIquIAP7bxj7NUxCq8HW
	2WqG1OLAWjQr0pRoFLLo5n1X0/b0TOLXsAbUBSsqDDKaeNhm/kC43K3sKpl6ZwJ6zwZiRYWM5I+iM
	K0UjxMQJD36+s8OOXGM5TwzVCh0ogyE2ySYGkY3kN0d+8jAkmQLfOjCCgsP22H6yQk9INVl00bgM9
	TnYcx/N8bHw6cAbCClDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmE9-00079K-WC; Mon, 17 Jun 2019 07:38:54 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDy-00071R-5O
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:43 +0000
Received: by mail-pg1-x531.google.com with SMTP id s21so5285637pga.12
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IgGHQ6IAhP5l0zysAVzN77a6+T7L0OSeylGMgm0CygQ=;
 b=mK72Uzodi8QNvhHj1rfIwBeMte6S01Xjalh9vy4Qz3YIcLQFfQt4oVELqWD5RtP4E9
 80InHYl/whQj8riH+JfsARhTINqIZeqfxh9V49e0JMEcWdV5FI2smU6ZR2qZqkWnKgsF
 TDTLOvMstuUntdqMP4J+38B6BejHmY2gaI8FU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IgGHQ6IAhP5l0zysAVzN77a6+T7L0OSeylGMgm0CygQ=;
 b=ilSVqdiH1JC1u2v+sS5v3aNXgty5o6ly4kKeRpg8OYOdIhiJQ+leWaXthPxLodRxAP
 2CzOesLseGGGGXdAvgiJGywzgOqeyCq0EDb4GbdO+hmG/1CNTc6yiX+5lnlwy3YEGvXQ
 TimSbUNdgQzQcfqgQW46iuFII4g+u1lvWSLprQFvYRfW0W2j7QoH9zyfqomJOXFvw66Z
 j11mgk0voyBCkz6M1AW8kReJX9NK/xM6//yUb4NXDZUhPSo22nP71S8gA7LHF0IoF480
 Uv7RtY/7LRAzDWTs+0y6NYJSq1u+ajH3E+WKtWvWNglIZuyP11l8/gtlVrfmCFBTM7Ve
 t9/g==
X-Gm-Message-State: APjAAAVfvamxWN/Hne0HvdSR0ZHjNSpOoa1UWu/2LQUzAST9ezoeACth
 i2+41dqdm8fypLQdPtYkZuM21tL5dG0=
X-Google-Smtp-Source: APXvYqw+HCtayUUFLTeChYyKmpalCHstPsTfk/KhULjXgEqJ5JMctNFdJF+33Vt72hWcWel2NJPqpw==
X-Received: by 2002:aa7:8203:: with SMTP id k3mr107194535pfi.124.1560757121259; 
 Mon, 17 Jun 2019 00:38:41 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 42/99] arm: include: rockchip: Add DDR4 enum
Date: Mon, 17 Jun 2019 13:01:55 +0530
Message-Id: <20190617073252.27810-43-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003842_455341_7D8A48E6 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
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

Add DDR4 enum number in common header.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 09f98bbf46..c290fd89c9 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -7,6 +7,7 @@
 #define _ASM_ARCH_SDRAM_COMMON_H
 
 enum {
+	DDR4 = 0,
 	DDR3 = 0x3,
 	LPDDR2 = 0x5,
 	LPDDR3 = 0x6,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
