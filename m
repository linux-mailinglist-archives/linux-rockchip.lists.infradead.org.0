Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FB61287FF
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGqXKdduGrL3NDr3BgueWWTk3szwidZXD4LwZu+ac3s=; b=M/sRvUM1HZ8X7G
	61zGdWF1jlPlwOBcrLluv13Wfw16qjrGdpaH/hWiEH6b3NYIgWVZ2xsg0O+YD03dDvrIiNzMRSc2o
	/uFh8B/oTUUa1nYiaggQQhm5RDVcsJh0cSbMM0ukGVtNFEgrz4Fqn3VdxpeItWHyTegi6WkhVCdkP
	GCkgrGUXNntwHiHZOoFXdxIcSYzLEN9vj1cfyBGosR81IvGmX5DCQfOxvAHP8zRLonuEm1sWa2TI5
	Xa7QvJYi9KWPYTki2BulrrPS09q0ljQGUUjU/ZHRzERvc3L4xPp1+XAp3ViaHo/iHWadcj+bn9K0/
	JLDBYM9CEdIUXLu8AAfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbZ-0006in-TU; Sat, 21 Dec 2019 07:55:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbO-0005eH-U1
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:55:08 +0000
Received: by mail-pf1-x441.google.com with SMTP id x6so5413751pfo.10
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:55:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EuID1Upv3NvQK3+qZN8HCyunOqQiAwANLQfiZfbMwY0=;
 b=Isn9ZuSCUDUKA+kMzpoTDDRddSlz3xBXrmEH6xMyodkP/w5h7s3Wh1KX3wHkL0K6jj
 MvUqxdq0l0LNFdXOg1wylpsRQRc/DZfi6CITfDmGEPJRmRon4RanoeaCdE9E2nZ31UAC
 8ZAHvarozYiwvtySAUh0bOfyFCToC/DWL5LOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EuID1Upv3NvQK3+qZN8HCyunOqQiAwANLQfiZfbMwY0=;
 b=PZ4uxGYnzEETvGJ8h1jJVVlC1Du9Sz+MAmNcKoY2weRmF5q3kcOKZlQ+YQIcn3TZ1D
 SS9FzwRx9M4UMvxitqLtZTfG0TGY7y5m4mNO4I6vuBif8qNCVDJo5jB1kazV6rIzlL84
 GWbwtUgnvD1+EZSSDMsT4lUY9ouNV0qbCtMTs5hcDqGwHUmW3G4ymDTRzm+Pil0Scp1S
 mbNudyA9hV0Ql10QF5nV3LIFyP2PT6WACTajqP749sVzw8iTu64Ys8wrMDZTvXrgpGFz
 P2hbBa5s7VmTWPu14MaoagTmUkOKI9yQUkbxbVcPspubclLe4njE9kpQeCo9eJM9CwIZ
 Uc2A==
X-Gm-Message-State: APjAAAVghdVYcyilFG6sai4yiVuY0Nlrz/4K6zd+liTyrZJK6nX4Vctd
 S8awrtgjJXa3uZT/nADoW+zaSw==
X-Google-Smtp-Source: APXvYqz0HFwgAWGuSiNd7za7f6AMy4gE+hvQz3QmfBI2TSQUySoH0DXie7Rm2QL1PVCZQSu0rdxp6A==
X-Received: by 2002:a63:d802:: with SMTP id b2mr19334351pgh.414.1576914905694; 
 Fri, 20 Dec 2019 23:55:05 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.55.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:55:05 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 05/11] rk3399: Check MMC env while defining it
Date: Sat, 21 Dec 2019 13:24:34 +0530
Message-Id: <20191221075440.6944-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191221075440.6944-1-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235507_033805_4E781762 
X-CRM114-Status: UNSURE (   8.64  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

rk3399 do support SPI flash as well, so there is
a possibility of using flash environment for those
usecases.

So define env device for MMC only when it is used
by specific configuration.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 include/configs/evb_rk3399.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
index b9c4d683f4..c0b0358893 100644
--- a/include/configs/evb_rk3399.h
+++ b/include/configs/evb_rk3399.h
@@ -8,7 +8,9 @@
 
 #include <configs/rk3399_common.h>
 
-#define CONFIG_SYS_MMC_ENV_DEV 0
+#if defined(CONFIG_ENV_IS_IN_MMC)
+# define CONFIG_SYS_MMC_ENV_DEV		0
+#endif
 
 #define SDRAM_BANK_SIZE			(2UL << 30)
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
