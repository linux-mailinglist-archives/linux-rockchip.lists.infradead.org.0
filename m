Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ABB1706E
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 07:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9v9KMGFXcS9oOatBBvD+ooT1X2C/p+trwAZSSPWAu7A=; b=h0kgOd8jYAQZ4P
	7zVRRV8lGPuRLxGts8wNAf2Zd2xDG+exTi79t1+BYRc0/k6YbzcpFlINcnPxjdwZBTQHszppUItbp
	zXI+CIXfnHrMHwfQLHqwdxbnBAqUKzVgE43uKRuGde5hELCrWmWJSu5cWbA5o5H5YDt9TjN4F7Ddh
	c+wfadrt7rq0n8gS0tF9guVvEL+FLkRIjqGdX2jvyXTpZds74U8Irm+urH60FllLMMVkPtTNg6y+w
	qRugvrxqDBqTJHZQSPOKlSkMw7nY8Ev7RZXbRf05uEtsVJzXwNaADnQHYgnmqWe7Tr1+oyO33iX1T
	1ZLkqCuo7v/fbN7i8Zdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFLG-0003a7-Ao; Wed, 08 May 2019 05:42:10 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFLD-0003Yt-Lv
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 05:42:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id w24so9366309plp.2
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 22:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e2q2swsqqlLHs0/TIuGV25eb+FLtVFPxNRiqT+F5US8=;
 b=WV8xyolhLyLLk/1zVcifOqhBXHjaSxRaAGuP6lwRHRxmnAUgiRXUWnUstn4UMp7H4+
 dCJUO2HRrevyN/Quta1+Gz/QeGtUK6Q+pnCrL7KE2/cTVNkl7Wo9XZjBmLC/75SdjbjY
 jKZHFSQ13Q6knu+oeoavnNhE+fAmLOj8AdAT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e2q2swsqqlLHs0/TIuGV25eb+FLtVFPxNRiqT+F5US8=;
 b=UM+tCoudBj8s34ZLsSc22RE58w7T0xDTX3fcst0luP5P+HsjTr+znRy4yvEmAUFVKZ
 gBkha4Nhy+kjV375VK6kyeCbytOLyhqL907fvPpqSWYsR0/dB3f2DWhkkP01tbX5PDIH
 LOZwN5M96qiXsPOkpYuny3IcDd6pfHFfWjfo9SuRju+4wK5f2z33Eh+v1QiMrg7wh6wk
 07Fnn0YXgFswL7RLk0zrZ4g7kXbItwt9gmOPX0HHtAxBQ/AFHKjxaL620OM+p7lCugrY
 G46xVvvtoNV0IOT20lT2Wva6EeIiTH8xzk4RFm4OOMka9q6WIlf7scxtHHY9orsoOSsY
 vHWw==
X-Gm-Message-State: APjAAAVdf7xFWUmYFk6OhG4en3Eql4zcbTr5aSJpl9fT3XM5VsIZrOKe
 dvzt9UazHnkCyTxbYjg3Q2ut+4x39v4=
X-Google-Smtp-Source: APXvYqwysd3sPgqWaU9OTjy8uxfzZP6+flRp52K6D0QD42LkasUUoiBsTIZWkAX0Jjhh5PhYCCZacg==
X-Received: by 2002:a17:902:5a0a:: with SMTP id
 q10mr45348270pli.101.1557294126726; 
 Tue, 07 May 2019 22:42:06 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id p67sm33864394pfi.123.2019.05.07.22.42.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 22:42:05 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [RESEND PATCH v7 01/11] rockchip: dts: rk3399: Sync
 pwm2_pin_pull_down from Linux 5.1-rc2
Date: Wed,  8 May 2019 11:11:41 +0530
Message-Id: <20190508054151.21762-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190508054151.21762-1-jagan@amarulasolutions.com>
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_224207_852354_95F394C4 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

To make successful build with dts(i) files syncing from Linux 5.1-rc2
the rk3399.dtsi would require pwm2_pin_pull_down.

So, sync the pwm2_pin_pull_down node from Linux 5.1-rc2.  Since this
node is strictly not part of any commit alone, I have mentioned
Linux 5.1-rc2 tag for future reference of where would this sync
coming from.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 arch/arm/dts/rk3399.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/rk3399.dtsi b/arch/arm/dts/rk3399.dtsi
index b53e41b4dc..b73442ee34 100644
--- a/arch/arm/dts/rk3399.dtsi
+++ b/arch/arm/dts/rk3399.dtsi
@@ -2495,6 +2495,11 @@
 				rockchip,pins =
 					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_none>;
 			};
+
+			pwm2_pin_pull_down: pwm2-pin-pull-down {
+				rockchip,pins =
+					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_down>;
+			};
 		};
 
 		pwm3a {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
