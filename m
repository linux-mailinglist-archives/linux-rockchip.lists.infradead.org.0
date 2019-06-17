Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0AE47B75
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ewwe0VgOHFr5JCjvDihkkRlWidikbK1O4RNGD2ev0Wo=; b=NS2K2Gi+bBZV6q
	0ygIqNYUeTea9wPXYXRvBuPfDo21vSBIiRfHYGK3HJDWH8wEw+j8lLAd4QixLv2PC66mvVCcBtFHk
	2lo3VydxWGkZYye7a3cSu+D71N2/nSw8DZSTYtesyYo55EFVP8jXQqpCrwmCjmPSuk5oDYYXUk96c
	wj5dc+3QStefTOQRyo9uaVmblEK1YX9bIazbvUIGU90YPsrM4J112EMD7oH82vhC0yT/Py5XwzGsE
	QVaJ0t2/Qao82qTLusIhiRJXve6IWhoUbFBLo6bQgBnglDh2xhHddbNIJQN3G50ymoL0MfO10zok0
	3uow77F0Tgqh9NPupenQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGJ-0001t0-JA; Mon, 17 Jun 2019 07:41:07 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGF-0001qU-8Y
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:04 +0000
Received: by mail-pf1-x442.google.com with SMTP id c85so5205697pfc.1
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DPGRrQseEV7fRp15l6glCYd3VAIDrHx8CUe7joMScwI=;
 b=oQu6mK7Xe0GFk+XC1wTOh8FKtv5O4J6d2qjNUNdzKAvJyRscWzBkEPHWH7hJ0stRLI
 rWkOOoD3MceW8Ktol4mHryfCZWOVu7VMKU4sz1bxOYhbZ2F0nM8dsZ6DIimzr6hThIfA
 1xj0EEDZneNDD1+yuyAAQ41jeSWKaHbveGmBs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DPGRrQseEV7fRp15l6glCYd3VAIDrHx8CUe7joMScwI=;
 b=YKFpNK+YoBA2FbZa2OLnWvpYGpFLnCTGTZp/rPzkbpOmtV3bKWwW7zsEyC5h/L0HAE
 DIMVehrz37JdFBS6musSPS/g9+j9VVFA823qe5ozMXOKzS6Vua57brsC2GZtUJumjTK8
 S3m5tQXaM/AOplf8VF+z2nyTbeQrCxbZMMGOt4m8QJgdMYTJj4/AVDdZwdVfgoyh8807
 SYjQiS/wG+cRpYQNpBAVfJOsacCfpSAYfq15Iyg8zEtQiYFZPIMlHG5KHWOeKbKUCP9r
 ptH7XqfCuViZbtI+ZTnz661BlxNy2MRBPwZsMWjLOxz+b9vLAOVkU+FFpDJ0c+5TGqs6
 dVkQ==
X-Gm-Message-State: APjAAAXjHTLw7mmCqUXWEVQWcL4nHCnOTAxkUx6MVP57DYZgntZWfCwF
 Uznz9HQAz3xwqZQgfog9/03w0Q==
X-Google-Smtp-Source: APXvYqyxM+dDjTghAOU2KSXgrsCKL8Dx13CzSLyElhA6xlFYzD2jccBjj8yrEXt1r3DwFTBxlSiQAw==
X-Received: by 2002:a17:90a:fa12:: with SMTP id
 cm18mr24744898pjb.137.1560757262801; 
 Mon, 17 Jun 2019 00:41:02 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:02 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 85/99] rockchip: dts: rk3399: Add u-boot,
 dm-pre-reloc for pmu
Date: Mon, 17 Jun 2019 13:02:38 +0530
Message-Id: <20190617073252.27810-86-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004103_329174_81AB720A 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Add u-boot,dm-pre-reloc property for pmu in rk3399-u-boot.dtsi
so-that SPL can access pmu.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/dts/rk3399-u-boot.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index 0786c1193a..31942899f6 100644
--- a/arch/arm/dts/rk3399-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -3,6 +3,10 @@
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
 
+&pmu {
+	u-boot,dm-pre-reloc;
+};
+
 &sdmmc {
 	u-boot,dm-pre-reloc;
 };
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
