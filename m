Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1D86A7EF
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQvDUDd8kaLqX4rzy14v94cIoHDOXDQKQDKYFnQEm4Y=; b=jkN/pB7J3NCZym
	+nUXLMfzDF1m/j/9fsJvpjZ012CZGn6evprtDkyaOwOT0ZbLuVigqnpAa228EwbO8K0/BEcEGLdyu
	BPXEx5V3PgvPg/5r7b5iISWFZSr55hciqVkM1csuRAaf6pMkS5qaH2O5eLCZH0aMduUdyWAJ7HWY4
	Mtcr3vtXCNeqAzd9AhZAPmdKOsxvGi7hHsPFnOHNBs6/xdZGCnaRzdhoncZcxIsipSKfYAl6ce0ce
	jLEu1uB4i+DvDN7jK/zRgzeiiUWM3Pg2Cb9CgC7TtNT5zCbDTiVbByx1YPEsr7LhqISwXzxEOHcW3
	w1fCo0qCsutbtcNTspPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8c-0006yu-HI; Tue, 16 Jul 2019 12:00:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6L-0003xd-9B
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id f17so5021935pfn.6
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yORN6ilDAH50AgvnfaFSdINdGaiaAQ4jirdj9cxDI8I=;
 b=iVDPnhBPwzaVmjPjSjTnVYogSbab0uVf4sQOHzIChF2oWXKfmrAaWY4TYagTGxae7W
 m7KsThFDuvlt1Tn8nF/q2qNTGIHlPzKBPK09l7UHlE9RgCoi4VwhJsFmrRG6xIxfjwZz
 XJ9aITKw8mV7n34tY/uMIvRu8vixPAUuV0jsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yORN6ilDAH50AgvnfaFSdINdGaiaAQ4jirdj9cxDI8I=;
 b=EAaAC74R3i3FMkBjyW+8fMdvrg/RwqCzG2qxn2HJBYmQpVgpCXCUY2yglbRteaKl9i
 1wyCPPc9yNlKTMVzE+XgHHbTvhSoKGHQzKEFv7/hqlI1VHpedlPZ7tJpaZSyCtl45/ei
 woe8UnuZTA7YhsafBXnzuXgqBkhvkWh431vZd9PCsAYLAZ89llYJwcY5Y4APEerLbRFt
 yduTZIZ+xtK0c8hpES3n8KRbl8y1k2ZpVjBGOAisodHVDaEjAxPDGEnw7HzVWYKbI63X
 At4CrtVXt9js1rg8YJeVGsBI4xhmx+qzy76l3MVJeQFmSltbPbGzA3cXQvAZS7voxQRB
 pe2g==
X-Gm-Message-State: APjAAAVZawNe3oeFkGGGl2qf8pFONSf/PzpvSOrAo8T8q/BPJ5aPx/Yv
 Dr/JtzWMnZ6pwpJr7J20+45sxw==
X-Google-Smtp-Source: APXvYqxKvk8u5iaAqeN/MBsIqph98qYOYUX95ToGfsp3YFcjy4u0ACoO2MQvj+RC2RAGTbAEsa3dAA==
X-Received: by 2002:a63:3ec7:: with SMTP id
 l190mr34218273pga.334.1563278312405; 
 Tue, 16 Jul 2019 04:58:32 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:32 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 10/57] ram: rk3399: Add cs1_rw macro
Date: Tue, 16 Jul 2019 17:26:58 +0530
Message-Id: <20190716115745.12585-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045833_363176_D5F42C03 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Add simplified and meaningful macro for cs1_rw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index ad9726a57c..578db90241 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -94,6 +94,8 @@ struct sdram_base_params {
 					SYS_REG_CS0_ROW_SHIFT(ch))
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
+#define SYS_REG_ENC_CS1_ROW(n, ch)	(((n) - 13) << \
+					SYS_REG_CS1_ROW_SHIFT(ch))
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
 #define SYS_REG_BW_MASK			3
 #define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 43cf597828..a83709f271 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1095,8 +1095,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_COL(info->cap_info.col, channel);
 		sys_reg |= SYS_REG_ENC_BK(info->cap_info.bk, channel);
 		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cap_info.cs0_row, channel);
-		sys_reg |= (info->cap_info.cs1_row - 13) <<
-			    SYS_REG_CS1_ROW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, channel);
 		sys_reg |= (2 >> info->cap_info.bw) <<
 			   SYS_REG_BW_SHIFT(channel);
 		sys_reg |= SYS_REG_ENC_DBW(info->cap_info.dbw, channel);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
