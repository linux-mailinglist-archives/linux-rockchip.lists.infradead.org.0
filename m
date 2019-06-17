Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E983747B2A
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhUzJ1DnD/0/C+rYfgBQHu0tVxsPtdFI0evp8CrFnpQ=; b=dBIRKV3PGorLpK
	UDsyyHDtGsnpzgJauigWTquRPgsFCklNSgSzw+Kojt4oqiwSpSsdpACs3AChQv9ZTITEp6SygcegK
	49baWFM7ac/MEMeQFHCKwI+Hj6B9A1YiGwTr1NH6pjn9HRB3mXyKE11+8BTMnydSIijdnsWUj6Ss/
	kJPiKJKMzmed56EwOTmcpG9931FSfcaU1ZRawfEkuLISbostTdLn5UWzQV7Gd/MbcwJ1K7WmdyPVm
	BJJJbYm+ajqiPSvsZBzaVSKUfXiuENEz51oXxg/r69DfS2mbpLO7xNNe1ckyfSfpWPslstr6skfYo
	UqMZERLHtn2s1gk/7hwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCu-0005wf-Gi; Mon, 17 Jun 2019 07:37:36 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCm-0005qs-J6
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id s27so5317659pgl.2
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q3ZUYGZAIT9Vot7SJ8lFJ5oYpTV+Zc69aZooDMsUqjQ=;
 b=J2hosM0A7u3nrhUeU7i6a+vVYrwIGBUzm5y8GQyy8Exr7jcimjp3Qxu0lrukcRQ+KP
 0I5xvSXRcyCowinqbP42uvjxIxtZQ6A98FAGyRHI9nXjRrbRVkp5ZP3tG6xts9Gva4qh
 XtOoirbbqf6oZv/F/Q/hW9iXM1zMFcDtB16BY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q3ZUYGZAIT9Vot7SJ8lFJ5oYpTV+Zc69aZooDMsUqjQ=;
 b=eXZeGck0CPVfaNpeAAyRy2X0D2Qi9C6M32Hd8tf7skdphRz6d04Th8WsZUmJoXhDHX
 xWW07afpVMJdrOhRAADZ20vBKPYFIEoXDqq6aTKHU12CCAOshSeqhwM0PdKeEy4x4ndX
 XT8RHr7ImygMbNqGKaFvtXIJ2w+Mw37mX3ngHLGYdj6gm+laNAdDFhbQc1fV0atb7bo1
 RWWpi8AEl5gI0jjNE/+rAmu0Svhg8xNq4VWUKu86r4zFX/0f3lJqOeR2cBklDLQ+HVF8
 g2UBga7GjnXYL9D37Lz+kiSRoAjwwvToer4td1EQGifjoUOgP8JQRiitcmtzXljSyOOQ
 DwgQ==
X-Gm-Message-State: APjAAAX+H7tPJpD3D2WoF70Z+AM2QXW6M72ZUReWzFdBtiExBiJme60F
 QWDg6eWwpM6vTgpkz3ZNiGnCtmwbKIg=
X-Google-Smtp-Source: APXvYqyn4oBwSiFgKqV4poR8l1NPaqqC/qlNNfCzMxOvKSqfgQ4wsvtBwNSpuGk6MhdoGU8/PqsLSg==
X-Received: by 2002:a63:1b07:: with SMTP id b7mr19607142pgb.133.1560757047745; 
 Mon, 17 Jun 2019 00:37:27 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 20/99] ram: rk3399: Add cs1_rw macro
Date: Mon, 17 Jun 2019 13:01:33 +0530
Message-Id: <20190617073252.27810-21-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003728_679040_56E9A39F 
X-CRM114-Status: GOOD (  10.37  )
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

Add simplified and meaningful macro for cs1_rw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 2b4745acbf..bac3efac09 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -56,6 +56,8 @@
 					SYS_REG_CS0_ROW_SHIFT(ch))
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
+#define SYS_REG_ENC_CS1_ROW(n, ch)	(((n) - 13) << \
+					SYS_REG_CS1_ROW_SHIFT(ch))
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
 #define SYS_REG_BW_MASK			3
 #define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1907fc9eac..988672672f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1026,8 +1026,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_COL(info->col, channel);
 		sys_reg |= SYS_REG_ENC_BK(info->bk, channel);
 		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
-		sys_reg |= (info->cs1_row - 13) <<
-			    SYS_REG_CS1_ROW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
 		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
 		sys_reg |= SYS_REG_ENC_DBW(info->dbw, channel);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
