Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4F23CFD4
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ak70ZXlePOFOKruAp02ArNMNAHMewMRfqSXbVUPCOxo=; b=nVky3QDK29TZ/5
	aXs/OZ3zxw0GOUPp6jRlyJgsZ6pmKh+FNn3fTWr8sWb3VpbXZ+aGXOFg7hZNYMZpivn0gj65wZV1R
	0Wr+AJdh7F4ysN0YVpe5XAeiPiz5H927iae/FeIxx2Gksg3p1n5IiWAAmw3PqkKLdEnjylZcZNX7g
	n3ydHmOG+7O20kQZdMMryMcGe1uyeBC+5fBpJQ4JIjZAEBuEgHyCICmJbY3L1DYVca3w1vjN+VmE8
	FV8KS6Kv7wwKvuIVXEyFKuUV0JJbjnrMPbQWxi27y81CvrYBueN3BzTi+39jjf/Rd7vNNxhWw3A4E
	sbrehf6tHAwzrmar8v0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiC5-0007vf-E5; Tue, 11 Jun 2019 14:56:13 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiC1-0007se-Kp
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:11 +0000
Received: by mail-pg1-x541.google.com with SMTP id p10so1268214pgn.1
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FkCYBiID/lhz7C8lOWKp6q5hTcm2jkjoqxxR1eSGoWw=;
 b=IoLqh2nFY3a4JwlnJ7siHVdnfAzv7koFwklCfjnPgGN0cZK6u69lsaCHGNgiU9YIKl
 Zmlz3bvFuYi+z78ajJMuPy5aFk/kcthnwL3QJYfT8LYMfC+rg28QpHm6SRL1qlUc5Ph9
 0/qrEZftlQbiMoqNoSb4/+irXn6It3N0Y6lfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FkCYBiID/lhz7C8lOWKp6q5hTcm2jkjoqxxR1eSGoWw=;
 b=U428xLauFH3i3WKawlP8bq21quthj08JfKLIo1QocnRBZN1jgRhpQzhGnwPTWlZXOC
 qXmRDGQfewZ1RDORvMHfYAwg6A+PjaERobIf/KsIILmjGWW/gnCTHdd3LTl92krJHJGN
 cSVHa5lFg3j/21xuq7RYHV1kk8wRoORI3L3xnPUV2z2yhORHa8MnsS1nNtdLpgiqIpht
 4H9Xi+ndP5uRjHR4D/pOIKRjoK15HEtMNq3fp82RksiszhgrFCMjmUKJLVdyBbtK/QjE
 EvAwrsOwMk/nUnYyuuff+/Ekv5gRFkrGxUa/Z00+B5j0lNcFYpjkpSyuKICwOguYQHW5
 07cA==
X-Gm-Message-State: APjAAAUZqQiZNhj+HEFj8WYaU1VPlLPuH5bZOHLcXgmj0tr3nxUlKc32
 2fOJX8aS5CaLRYkH3ugFcDE8WQ==
X-Google-Smtp-Source: APXvYqyWdQ48lqgM9QENWM5m0E58lqfEmcss3CI6HgprTLdToDRjf2pYqHuCtFesnqqp4UxGIR9q2w==
X-Received: by 2002:a63:d415:: with SMTP id a21mr2996509pgh.229.1560264969049; 
 Tue, 11 Jun 2019 07:56:09 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:08 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 65/92] ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
Date: Tue, 11 Jun 2019 20:21:08 +0530
Message-Id: <20190611145135.21399-66-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075609_702477_896BFCA3 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Configure SLEWP_EN, SLEWN_EN for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 4328790a4f..78e249e164 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -37,6 +37,8 @@
 
 #define PHY_BOOSTP_EN		0x1
 #define PHY_BOOSTN_EN		0x1
+#define PHY_SLEWP_EN		0x1
+#define PHY_SLEWN_EN		0x1
 
 #define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
 					((n) << (8 + (ch) * 4)))
@@ -335,6 +337,25 @@ static int phy_io_config(const struct chan_info *chan,
 		clrsetbits_le32(&denali_phy[937], 0xff << 20, reg_value << 20);
 		/* PHY_939 PHY_PAD_CS_DRIVE */
 		clrsetbits_le32(&denali_phy[939], 0xff << 20, reg_value << 20);
+
+		/* SLEWP_EN & SLEWN_EN */
+		reg_value = ((PHY_SLEWP_EN << 3) | PHY_SLEWN_EN);
+		/* PHY_924 PHY_PAD_FDBK_DRIVE */
+		clrsetbits_le32(&denali_phy[924], 0x3f << 8, reg_value << 8);
+		/* PHY_926 PHY_PAD_DATA_DRIVE */
+		clrsetbits_le32(&denali_phy[926], 0x3f, reg_value);
+		/* PHY_927 PHY_PAD_DQS_DRIVE */
+		clrsetbits_le32(&denali_phy[927], 0x3f, reg_value);
+		/* PHY_928 PHY_PAD_ADDR_DRIVE */
+		clrsetbits_le32(&denali_phy[928], 0x3f << 8, reg_value << 8);
+		/* PHY_929 PHY_PAD_CLK_DRIVE */
+		clrsetbits_le32(&denali_phy[929], 0x3f << 8, reg_value << 8);
+		/* PHY_935 PHY_PAD_CKE_DRIVE */
+		clrsetbits_le32(&denali_phy[935], 0x3f << 8, reg_value << 8);
+		/* PHY_937 PHY_PAD_RST_DRIVE */
+		clrsetbits_le32(&denali_phy[937], 0x3f << 8, reg_value << 8);
+		/* PHY_939 PHY_PAD_CS_DRIVE */
+		clrsetbits_le32(&denali_phy[939], 0x3f << 8, reg_value << 8);
 	}
 
 	/* speed setting */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
