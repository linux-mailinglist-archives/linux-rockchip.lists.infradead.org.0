Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758936A824
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9eBpcAkS86/qw1gYb7Zb2BJ+PR6IdDYJX63VZTc/to=; b=tbqice38FrpB6M
	VArL2Xn5RN8lmcO4+cTf8INHX42nWodQR5TN63hRKIBKbNqjoyNtsbNjCLnn7l3YpMQg6sIa2Y+yh
	9XXHZvTgz/OCVCmGJlBuHoXVVDZYqz7SSG7DeWCH/FBjzvzHbrEbrb4af0LLnh5x1CcVbMUbHbg/H
	te0jZParCN02cGp77q9WErXNfVZEq5wGavuKzWk2pVilpjPIcwKY6Tx2JiAxHh39/7Z2UIlo5YJuB
	I6vprX/vCwzGT4u+xdKC+Py3kjfSXY20M2recTPfcucgyNB2msGussoatxTstizX0dMIgIPyRy0fT
	z9tt6zhDlrupCOhlw+Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMAi-0000Ww-G1; Tue, 16 Jul 2019 12:03:04 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM90-0007Lv-7T
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:01:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id q4so9338303pgj.8
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fpDCUTq/uMeL7qOuwamH4FPPN3zzEe4BTd5pNTFMd+8=;
 b=iCTgdrLonmL0L+/g7syFK8zfSxZvoAyZTbJ1TY2hcvleT3Zn8tO7eX0rbts5fTLPnB
 M1JrIgYaZ6xw5lYGgHX+mOX38fKZJx5DJ8ajAV1UVg9W0UiquIxNhGwFDbwbmI+hdrgR
 ly1civ5H/4tIx9WjhCyLo90UC6IaVUfXR4ZjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fpDCUTq/uMeL7qOuwamH4FPPN3zzEe4BTd5pNTFMd+8=;
 b=TP+89Fj6dTkgqEhV8cJhn4joHUiKlEo1vj64QS05QJr2fnlCMjNeHB/chHsHzi2dSd
 JSKaf0Ue1T7vgea721RE00bewMLi+EHL9lzIB5pgiruPIiTqkud/qi4ZMXcTBdqWY+zo
 oMaxIUuhRWYb3x4Ne7yt9a1NjjyDZjk2hbMGHTIdIAw80qyoOHsFlopCpRrmyf93C6QL
 ZLMYUgVrN8CJdwUJkTdanHtcxLSdgqCJT88FHislKHnhZwGuv8d9O29McNuP73vXHpih
 oZxu8kX3VcXQpSzFaYOH3Vfunp9Nr9LzhTNfB1CemJOC2ia/XuWFZUWC+WU9VrUBrE9l
 Ya8w==
X-Gm-Message-State: APjAAAXCAY+cXvZCyh0V1KcL1Xa5h9vA5nULLmBrX4V49kaIf2gTWkgC
 yCjAF9oF8AbZn+PKV4ytyCyGIQ==
X-Google-Smtp-Source: APXvYqyHg28xlFT+1HEdPxqOt/WTqyq95ZYhDwAytZGrb6BHW/5htWmF7nykEf0VqadwoxE3DcgPqw==
X-Received: by 2002:a65:62c4:: with SMTP id m4mr32274025pgv.243.1563278477532; 
 Tue, 16 Jul 2019 05:01:17 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.01.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:01:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 56/57] rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
Date: Tue, 16 Jul 2019 17:27:44 +0530
Message-Id: <20190716115745.12585-57-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050118_297771_2FF6FD79 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Use LPDDR4-100 sdram timings dtsi for Rockpro64 board.

All these timings are processed during TPL stage of rockpro64 board,
bootchain. This make TPL would replace rockchip in house rkbin in
current bootchain.

Bootchain after and before this change:

   TPL -> SPL -> U-Boot proper

 rkbin -> SPL -> U-Boot proper

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
index 50b0ca0df5..f7f26d584f 100644
--- a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-lpddr4-100.dtsi"
 
 &vdd_log {
 	regulator-init-microvolt = <950000>;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
