Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEC847B66
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QA+K1V8gd11Afw1AMNs9DVKqndsMdgY5W5VqDu4JUk4=; b=q2Mz11HPzPVU6E
	l+fh95Le+AFrZGHkMp/HvEDT4uNxeTC1zPePQ5BewFNIQ8HL9W4sjMk9/GSWfQj4kw2FoA5ys2t2m
	vArAySrWReNbT/s8/uAEKYPrQRY6vgnN9EBin69TZ5duHukq271MaiA22wWeXH+jt4mhMIVyX4nii
	ictpxQxABG2wRreHmQELAslKgGvIhGjM0O6uZa2Yd/8WgzJZrvgr2epbxOvqkT7Tz+9V+Jnqyuvfo
	bN+8rVIyx1zJwkxma6TQZcQ7KxaktibniXUCG1SgaHkGCnTuk4TBfEfbZkETcd3oI3USx7gu/OYcR
	dfWHA6k0gG960RgiOW0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFW-0001Fj-PK; Mon, 17 Jun 2019 07:40:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFS-0001CN-7i
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so3739017pla.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IJlTrExUV036P/BMRgn4pTMf63sVmYGkjOW1YSSrKmc=;
 b=Ex7J857tEAgIauusvHb973ko1n1akqCRoR/8F3KmHAfleuZMB54S+P+iiK92HN4aOs
 HeL/Joow/btz62k+fWlU3ZSMhb6JtDYgFVgZRxcuPYnPI8RdaPnySYMy9tLB/JB6pvZS
 SsaaBFS5UaY3kTvotwaZkcPAW+d/qCBOkVa0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IJlTrExUV036P/BMRgn4pTMf63sVmYGkjOW1YSSrKmc=;
 b=MOnSOIuuXLB4R/7YAM3EGFX2wserKYHr7KIW26ccDfqCM/83GeUL3MtSZAzkmRLjGb
 CGyGzBv75kcySxp7HvmuYCWTD6Td+Igj0ANC7oxirDtxsOEqLD+AkMNWERiOkOWxl9xD
 uHDO9aMYd7crb/jD4BA5zYOi67dbGbAb4Tz77mTTaod26+dkpViPtHcsX3fpIBq8bK2v
 kHK2TTRxfUwV5oy6+5aYyB5kLw3FQGtsxvbcKii5XAnIRoAxIjemCurpU1GLyr73xpSK
 YmrLoFCe2u0ABUljGbu0n4nGo0Z1/i4FAf5yG1qtEyQUsi6lIpibHvTNaTDq5y92SkQt
 1xaQ==
X-Gm-Message-State: APjAAAUTdiE/zer/9pAL+obFdZ0R1DtPe4yCATM1UQ3CVIb8Dgew9XZ+
 uYaFktTKV//0U0qhcIk3GYvGEw==
X-Google-Smtp-Source: APXvYqz/92GSJfV9kbMIR2t9eSiuX76F1aMFO9AAUYUiRtQMNTTibEoY9tVm6gol+bCWmXXHqrez9A==
X-Received: by 2002:a17:902:f216:: with SMTP id
 gn22mr88263731plb.118.1560757213677; 
 Mon, 17 Jun 2019 00:40:13 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:13 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 70/99] ram: rk3399: Configure tsel write ca for lpddr4
Date: Mon, 17 Jun 2019 13:02:23 +0530
Message-Id: <20190617073252.27810-71-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004014_304602_1C4BB0E0 
X-CRM114-Status: GOOD (  11.91  )
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

tsel write ca_p and ca_n values need to write on PHY 544, 672
and 800 to configure ds odt.

Configure the same PHY register for lpddr4 would require a mask
value of (300 << 8).

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e03181fbc9..41dd19a9e6 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -502,9 +502,18 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
 	reg_value = tsel_wr_select_ca_n | (tsel_wr_select_ca_p << 0x4);
-	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
-	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
-	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
+	if (IS_ENABLED(CONFIG_RAM_RK3399_LPDDR4)) {
+		/* LPDDR4 these register read always return 0, so
+		 * can not use clrsetbits_le32(), need to write32
+		 */
+		writel((0x300 << 8) | reg_value, &denali_phy[544]);
+		writel((0x300 << 8) | reg_value, &denali_phy[672]);
+		writel((0x300 << 8) | reg_value, &denali_phy[800]);
+	} else {
+		clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
+		clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
+		clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
+	}
 
 	/* phy_pad_addr_drive 8bits DENALI_PHY_928 offset_0 */
 	clrsetbits_le32(&denali_phy[928], 0xff, reg_value);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
