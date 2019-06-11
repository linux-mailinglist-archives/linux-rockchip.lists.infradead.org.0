Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E32F13CFD7
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXDS9aUTanLSs58ipcMwJ+KO4ZgKDOnhE0yr1YzjKRE=; b=d7Po0jNlkuvX0q
	zf17WDUUr+N8WOagH2hmsgjLwri7OQTZQSKj9DMO017zWGN3+29TmQWpTvxfX8zohEFWqr7sNlUyE
	5bHQLTeyosig5vX/KaiODFxhVPusJ5Vv4dpY1ei8szv9yrcRNesrcdH11wgeodUoIJw04IKlZTzjx
	uBXldrVEShwncUplfefLFTjeiN4CIQPJxoYfYHBEMml47fd+MwLQV9xIDsR1ghqovlGYw+xXTUKvh
	uq41vAh7rCHtlOsSk7IgBnTw93n59migmxF3Rl6r3jk3KaGH2PySIPYhBTTUrGoVIZJbEt8ePKERf
	kvJTh/gNt0GbjzaeZ0Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCG-00085h-Uk; Tue, 11 Jun 2019 14:56:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCD-00083W-I0
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:22 +0000
Received: by mail-pg1-x544.google.com with SMTP id f21so1101700pgi.3
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GsHylnIB++iBMUiXDFzXoSlZ07F6iOqo9v8tqN3hKF8=;
 b=mKVBpxMzIJFKeWZK+c3fX7LfTBS7Ymwsxe/GQ62IbsJ+jkJr+gUjxIEQNRCCxFuogz
 mdqKBq4uxk//yL0aFgVUcYdoXz2bZq7pfFk5U6NgmMpNScc1u9E5c/dlI2a0iXVOuuGM
 D7dIN0QqTXMO0napXMir9SEXGjkjxEEFLmNzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GsHylnIB++iBMUiXDFzXoSlZ07F6iOqo9v8tqN3hKF8=;
 b=Xsl5rNsoEhfJYjKMkewM4g7XtmV1PutTQZbDoo+a3Ifo30DV4naNH9vl36IxvZdqpN
 +o+HGPxxPhTU1GkwzsIygah9f0XGMZa4yTiSo07xGvWVeryvitzDVW+FTNM0mq0jiyHT
 jZ7xaCTlBpZP6wzpKlm9DXgHZDHtPFTQqzQmQ2qDtF2VQr3ca2X0liaseT1kuv6qt5i0
 WRNSMeXMpNMWSUQRa9Y9NQ8ALScWlA7zrJE2ZFtD+0AN326qjRxoJ2gBpEo3HeGzDzDo
 PXJ+awr5SlZNQlpbgG9V+uvXuqLOjuOF8lhZR3BewyqwB/2czeHom6GzWjT30NufxKy1
 p6sA==
X-Gm-Message-State: APjAAAX3gFVXbk8U9ifSU+V6x4/RQCgh7ELNB5cEbQ24sz9ORJZMbe3c
 ufGrHJqmWjzYg9bTymB/NVd2tw==
X-Google-Smtp-Source: APXvYqxJ3qRbNGLC3BkbsgUkru7+UzBJlMH7t4bRylg74YhbDeWjIPxRHBXZYBnkZtFVaGD7fOFR4w==
X-Received: by 2002:a63:6c87:: with SMTP id
 h129mr21163121pgc.427.1560264980824; 
 Tue, 11 Jun 2019 07:56:20 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:20 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 68/92] ram: rk3399: Configure tsel write ca for lpddr4
Date: Tue, 11 Jun 2019 20:21:11 +0530
Message-Id: <20190611145135.21399-69-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075621_671989_7266C7E6 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
index ecc215b9c7..a251fc6045 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -503,9 +503,18 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
 	reg_value = tsel_wr_select_ca_n | (tsel_wr_select_ca_p << 0x4);
-	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
-	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
-	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
+	if (sdram_params->base.dramtype == LPDDR4) {
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
