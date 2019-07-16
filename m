Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C486A818
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LA+RaahzjZmxWuGpXAD300Ewn42XslQpmq0Hd5YKyI=; b=FbboblryEnUYVM
	bIcJpbBqtQ7Ay5RWnfVbJsw3LBF+4ZZ0NbcyWF4rmkLyaLMkHxBoAKJOPP7iQnTIWhW3T/Ie73iIV
	pXWEJXm6IU848S2KZySpSUzEP69Sse7a4usfIASlQHv7PTFkBh0lCfpccCmC3hSPa49WafxAgprCz
	EA8N0mhmXMqA4qnk71+gQrtRFVIKU8YgkoZjNkCi4nCUsR9A13nU87dF/4r1KrUGvPaPUQwnhG/Yh
	xRG261/HzYudReY/HFV6Yo0pTSusZ1XEhnpoFx3XV3mIJ/vuXFY9c14COipAYvPrQ8k3OU5Bas9nB
	ozz7XiOS/TAd2LHTqHkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMAD-0008WK-U6; Tue, 16 Jul 2019 12:02:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM8P-0006pe-I5
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id az7so9998838plb.5
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ETG3xEjNDypYz03EYFcthkkYJBiD0np0jTY6XmiuUyo=;
 b=kNpxNCdGkUYfSaqUAPfhiTIilf2CO9JfWhpeYpfmRehNVPeXVFEHkBDeernIeSd8O4
 pEe5AH8OLUkhnvThrQIZtobhTAyRBVAtmbU7uADUtQA/6ayPO4IwiWFy3ZQmwgvKm9Wx
 Fzt+wf86nvR5kx7aiJ+dceR38uJaRhIO72GzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ETG3xEjNDypYz03EYFcthkkYJBiD0np0jTY6XmiuUyo=;
 b=TKwpesSanMxCEKLpjKdosCqpijJjZ4xQxq374TyNFbaxnurM3AEKfJScIY99yRqDu3
 3V9d6DD6d9wsVolQt6AXBK+/h1jwgYQdUOVOeoMvQdfuiaBUeLpB4GQxQsUhUcG8RBeY
 TxAjJ9M7itPO+dJDqRceJzS9QN6N0gmlkTQG0wBi5ryYt2nzrt1no22kjIdgIxfjQd8L
 sfHZ+eu/PRmuali4AcOqH47E04Fa4J/THgHYP8Zr4banFYgleeVXLB4+gXe7IS8qKyhn
 WopbBwhHphgQHeesSofCVfPpZPOwJCRSrVP+dovhPkMcLj0uNBULI9TvS4TPJm8Zy4ND
 HPew==
X-Gm-Message-State: APjAAAWIGgfPV0NsH/oKK523xtZ5Flcfw7iHrJ12a9IoUFwdt80zdNmx
 Vgj1FwIGgjfpQ6L0XDqShRqrVw==
X-Google-Smtp-Source: APXvYqxoJ27Awo36832CuB47A2szXfbi9Y2A96YGk1mbZ0g0YxiOnO+1qe9Fiz5iky9+neRfJAIZnw==
X-Received: by 2002:a17:902:6b0c:: with SMTP id
 o12mr33760251plk.113.1563278440364; 
 Tue, 16 Jul 2019 05:00:40 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 46/57] rockchip: dts: rk3399: Add u-boot,
 dm-pre-reloc for pmu
Date: Tue, 16 Jul 2019 17:27:34 +0530
Message-Id: <20190716115745.12585-47-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050041_740224_6C0BC467 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Add u-boot,dm-pre-reloc property for pmu in rk3399-u-boot.dtsi
so-that SPL can access pmu.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/dts/rk3399-u-boot.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index fcfce9ae02..2738a3889e 100644
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
