Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E26146AE9
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 15:12:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0f2C5rGZF8YCuD60ycu+fcnWN5gfF0fZzCo8Y1rq/gs=; b=sGOFkuv1kB7sfq
	8Uk39zyvdVwNRHpffem1RVyErM+5wy5VYX/C8sWT4ZRloq1IW4LaL8ooHkXPdBzWh8HMrA4o6SimL
	QDTeSVLczTTohUEVOv/LGHwCy/t0hnQyKJaTT4/WQ7pGGVaDya4GLuUG4OxvL0X79o2fKXKtNZbQC
	vpp6Ib1ttZ6L9KRaxNgSYPfKhfIJNSvp23+rbVXWPQNf8xNzx7QSKCmgL2Nbma2RNSqGGylxMH5Lt
	DJmtd50J1bJRMb5eDUUori2WfHq1sFY2ubrBFx0aL83z9uOhrLvghc3VrLTdC/Ssne54/bj0tFRSv
	KTwaPXxeTxqFJyoeeFjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudE1-0001zM-Mk; Thu, 23 Jan 2020 14:12:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudDx-0001vg-Vz
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 14:12:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id y8so1390574pll.13
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 06:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zUWAnU1mR3ZKYR1jjZcWiKDm0bDXARn732TTOL/hENo=;
 b=O+z2EWfGM0CUV36pfILsgvDFkW2ttDYe6ED/RaS/MgmAI5kHq9wYX24HKFW5w39I9j
 LRQjtfcxIMt/l0PGMD/+MAR/TJEcSmnQTPsv/8FxqVHyjBVbiNnOds+mDCslYW+BIikF
 xIpEs3FLMfHelA4oczP0z87oqwWYZo+E/Rkdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zUWAnU1mR3ZKYR1jjZcWiKDm0bDXARn732TTOL/hENo=;
 b=iTnTEW1u29U6HI6vO3bDorKLB5t2Ix6gpblJF9rAIuQsRAfynPBO3mP2tQKrWGyTTa
 WOAzspfVkKGUggdE/+IhrbPlVn3zVXNks4YghVoKzmdNSfLZfIUuj+Dldd3YexLxTKiP
 xM6eKwt7OaOsNNlpSzIpoXP+p4FPKn3gURwGaqDS8ziEyNwU14ul3M/L7ScINSs+fCei
 Z2/CoTvs/rzMger5wqn75PnCibAVI3JEsTFMWNHMik5e7305VACiCEeGeLj+LunTRGv/
 pdPNNKeisq87o73JUIus7iAaW8mysdyNWHeYFlP+U6zh1ZM2VhRdT03xyZO8XACtA+Tz
 ZKPQ==
X-Gm-Message-State: APjAAAUCwCDtpqzUUN9JWRQYiiuX8JCC0aUR5xbbGnxiYJUP+h+rAC14
 mj8cKMpr8T+af76LyNA4Zn0unA==
X-Google-Smtp-Source: APXvYqzNgppfeLgbBMpvtjF7iArqRZTCI0YxYJAk47G+h6cO1VGuNjEL1oIZqJW/HWtsLlC5Sscreg==
X-Received: by 2002:a17:90b:258:: with SMTP id
 fz24mr4594238pjb.6.1579788765295; 
 Thu, 23 Jan 2020 06:12:45 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id o6sm3136392pgg.37.2020.01.23.06.12.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 06:12:44 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 3/4] rk3288: tinker: Enable HDMI output
Date: Thu, 23 Jan 2020 19:42:21 +0530
Message-Id: <20200123141222.486-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200123141222.486-1-jagan@amarulasolutions.com>
References: <20200123141222.486-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_061246_058009_1345BD26 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable HDMI output for Tinker RK3288 board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/tinker-rk3288_defconfig | 6 ++++++
 include/configs/tinker_rk3288.h | 6 +++++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index 894e7d1e12..ecade47e7a 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -83,3 +83,9 @@ CONFIG_USB_ETHER_ASIX=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_CMD_DHRYSTONE=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/include/configs/tinker_rk3288.h b/include/configs/tinker_rk3288.h
index f8a55a2cec..f1095ccd0e 100644
--- a/include/configs/tinker_rk3288.h
+++ b/include/configs/tinker_rk3288.h
@@ -6,7 +6,11 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define ROCKCHIP_DEVICE_SETTINGS
+#define ROCKCHIP_DEVICE_SETTINGS \
+		"stdin=serial,cros-ec-keyb\0" \
+		"stdout=serial,vidconsole\0" \
+		"stderr=serial,vidconsole\0"
+
 #include <configs/rk3288_common.h>
 
 #undef BOOT_TARGET_DEVICES
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
