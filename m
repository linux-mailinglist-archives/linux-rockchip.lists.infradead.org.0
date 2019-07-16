Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F99C6A820
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vbQbyWVpS3y0N6QSHlqM6reBYQt0YKoFB+SV2GLYCgs=; b=kK/MwAJ9QPlotv
	u39RClGUNpFOhqGjfGXBt7hn44aB2HaUUHujezzUxyGfmnnKAejeyy9MV6hOU6C/uOs4G/hkKt4ot
	QH1FrChlWxD+GI19XUSbJ5CnW/izj/v28EAAzmoFdN9QK6hzM72TG6fpYhEymFBSWmUE7syA9nyH+
	X+FUBj/9KT8RYn4ev+R+cRVYr0s4UCEskd7poiimwhZO9JQ2yosjlSu8raVEcMgab37iuJKJG0oYs
	XLqbynmgjoTr+nIfHivhyrtsEfiYxmGmz31Bd9yYvfzu+hXVzFlnW22k3nOUrr+zQb7YKePSQjxzi
	41hzLeU3JzHXjkvcWNeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMAX-0000NM-TA; Tue, 16 Jul 2019 12:02:54 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM8p-0007CA-Lm
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:01:09 +0000
Received: by mail-pg1-x541.google.com with SMTP id f5so507465pgu.5
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n0VrQpo/c7bOTsSmilS75A66hSQPZjmuXkAut/AU6vw=;
 b=qU3wJa+IbWWoYcIqSEo40Wh2DmwvZj95Q3Yb7suUv0zf3TPuq3qSQZ8JdXaJw73ZPU
 94+pjWzChzFYgVIvrNfs8rNp74fZd4dLPSQlHXy16yWKwzsIzIsKZneDasjeSENLi+U5
 H4SUTxONRhBL6lrYlkGsss51TZnECiyB439tI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n0VrQpo/c7bOTsSmilS75A66hSQPZjmuXkAut/AU6vw=;
 b=OdngPP+es36sYhFfRN/mR28NFQFkn/TX8l74c0iXNrcmsiz1Y/psoeJ60b3+JzYAEP
 qSq6QayPv1JAD2iS/h0Gm88SEVpbwV8Vr+QTG29DQTKC/ZllyUajye3V5p1OX/3VCezy
 iAFEdXb6ZlHp4qIv6YbOmeEIWQJAjTa9jOxysqUH0uEMnE7Faa4O6XKsH0LblWT9ksgm
 ZwkKK7fYJM0ehki0Wl/TcUF3aH+PQaQorA43Eh5R24Nueyks+yZvl7/5qaEPuo2oEgKs
 fiMSzq2MFUBnpuwNBVU4zEkBIfW2RDSZrDshQu67q7SThE6J517UIJtU42moKtDE7deE
 M/Wg==
X-Gm-Message-State: APjAAAWFOwdHQFPgdUUpmhtVWE0JW4O5DWnyzof1zofLw9bEGr2Hh/yx
 0kDMTJOALndR/tSHSRHH3/rPAg==
X-Google-Smtp-Source: APXvYqzJf+g4q1gUpg/Glh85McE6WDTKF5m2opzTx7V+VJzHXlCV6AHTXJIXpDYiD34+VYN2GC7MsQ==
X-Received: by 2002:a63:6bc5:: with SMTP id g188mr2129578pgc.225.1563278466359; 
 Tue, 16 Jul 2019 05:01:06 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.01.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:01:05 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 53/57] configs: rockpro64: Enable LPDDR4 support
Date: Tue, 16 Jul 2019 17:27:41 +0530
Message-Id: <20190716115745.12585-54-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050107_789810_3422C05C 
X-CRM114-Status: UNSURE (   8.08  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Due to foot-print issues, we have LPDDR4 code can be
marked as CONFIG_RAM_RK3399_LPDDR4.

So, enable it for Rockpro64 board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rockpro64-rk3399_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
index e8fc7ae141..39e68aad82 100644
--- a/configs/rockpro64-rk3399_defconfig
+++ b/configs/rockpro64-rk3399_defconfig
@@ -28,6 +28,7 @@ CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-rockpro64"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
+CONFIG_RAM_RK3399_LPDDR4=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
