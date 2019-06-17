Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5EF47B6F
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXPFjWKKxUo4mFoG54e7XsKti6adxxrwBsklxiKH0zY=; b=U8tM4llda8IV7u
	c4bTbVSUCazzefRG5PBrR50d4PN/YQ7dO/vCemMWWI0V++qeyMvrIWkmmAs68OXsaKIMX2jH8FzQm
	hWU0CNlHTl/fnKu6T+q/8/ce16NOZtVufOXWlSYWCQT+urySb6D0FsVoVU8KB+02TMMGfcN0BRPEA
	k7SJcGg0Ls6T3Mx3iGc0dIGfDCy6WoxLuCMvypKq8bsVF9YHFPy6TjXpBsTb83FSs5f6CGqaut7yy
	oKvv1rmXPSQP+5IZGOTPU5BVjP5OFqSvvPxxUuoZ3xx++pukCTOTbk8KG2rQbxhsHktYqRl/pjaek
	Le5lDBCCfAxcHi21qzgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmG0-0001cZ-1Y; Mon, 17 Jun 2019 07:40:48 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFw-0001aX-33
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so3739549pla.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kzGmbAP3nCqIN04JtPNqqbZijwaKOikjSbmQ33aVxJM=;
 b=KgbB4w+ZeEOMrPDaDcgymnBtcFRRXs00l6vhcIQt03+SArc0gKlnkNeHlozTznp3fz
 a366YHW0HxdA66w0Xp3QGdGb7moxOLeigjM2S7MDgXwl/I0z4gA1U8gNVv9Ngbga3Rlx
 TILHll1RreAZYwsfJH9zjR3djQsDKahMCgu4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kzGmbAP3nCqIN04JtPNqqbZijwaKOikjSbmQ33aVxJM=;
 b=WiiQ/nVUy9GKj4TMdVLCrteoREcK1q9eVNBl7Sg25Fwtw96KZmiLzMvhC8IAfYjp2R
 zo/yfR/12j23SfCRUPtT05SHVo7U9PJshPMXUNTp7C249xAzuWugK5NIdsWbBlSK7EZ7
 7X0lDNZCmGfUjtkjt9jgxIjVtbzjmP5WFR6JlowKSePzO22T0XqUNjOSSF9IJaNjj9zL
 CUwhOYxzRIDD0U1wn2+/0wWxsuENGjtn1WsbZrrP4xTVYBFzxYWxAANs3v3c1xE+YF7s
 9BVJXBBnoUHPHF3dgTXd5MQ3XIdfFB1mOQaNHXCDKRkk5sJlDx9alLKJymh+6Cd2Lp+g
 /CvA==
X-Gm-Message-State: APjAAAUDZs5BUeeMgDHc1/H6adLGgtN6dLgkLDkKbEJqCQBk6TOiHXYC
 E+cY73RQVjuWu4IIZuBKsSeNLw==
X-Google-Smtp-Source: APXvYqxavuD4NcTPY5W9oGJm5OeFt4/AeV1OgJXyJWuIZNRh+2YnzNWMlYNBUAcE9MdZDrqNQnODlA==
X-Received: by 2002:a17:902:7c90:: with SMTP id
 y16mr17009505pll.238.1560757243589; 
 Mon, 17 Jun 2019 00:40:43 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 79/99] ram: rk3399: Update lpddr4 vref_mode_ac
Date: Mon, 17 Jun 2019 13:02:32 +0530
Message-Id: <20190617073252.27810-80-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004044_203147_2F3A8801 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Update vref_mode_ac for lpddr4 based on VDDQ/3/2=16.8%

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 0e98079468..e3180d0ef2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -366,7 +366,8 @@ static int phy_io_config(const struct chan_info *chan,
 			vref_value_dq = (rd_vref - 15300) / 521;
 		}
 		vref_mode_ac = 0x6;
-		vref_value_ac = 0x1f;
+		/* VDDQ/3/2=16.8% */
+		vref_value_ac = 0x3;
 	} else if (params->base.dramtype == LPDDR3) {
 		if (params->base.odt == 1) {
 			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
