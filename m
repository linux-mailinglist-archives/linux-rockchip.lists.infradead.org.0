Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275A94CB8D
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 12:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7q9zFJj5MY5/paNT8bmMzzqLELSLVHVlZQGwdYdq49w=; b=ImgQgFkPwfH4bw
	8096+7teWwpozqoQxuuqOOw7gxUexlR5wlrxE4XPTLZFvPKf0Nt/WkiRpzfVGO3RQ3vO4z/4vGb3g
	EgYXIAuuLoXHA0tQTsfBut1mjwXGxGq8OegkK6qp7ptN6HGZr+Z1+nSMNyIB2NYHPO2KykDrbw+BK
	1db4S9loCsDLX1dHNeBRIuNiV1/W9FnnNfROk9IWj+gwyj5IUxxSi+CyC2vH82ELLtfn3Hr3kbTmK
	n9y8hRZg7RUqZctlP6d2WruUF5NqE1iS812f8oJrhjgGgWiIm4sA4/ThqDwx+M+SYdkalW+di41TO
	qtl3ZKvwAPw8e0+c+bXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtzE-0006FW-7q; Thu, 20 Jun 2019 10:08:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtz9-0006DB-CP
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 10:08:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id x15so1408290pfq.0
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 03:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P1Q+D4NexqNNTDIbmFASjLUyHZ2UwrDRPpa+KPUsiiw=;
 b=meFemPTW3+o+P3faWDllfWx2EJmTHQ/Gu/Wp/bmHWmmyODC4NL061vv8GtUqyiPOnz
 j3jiCcevjRf8b3K7qdsZU5g72VG0HH2PnmhdeccMohgdfOhjJ8sQSOO3ridIHOLF9FaG
 yRPhYua8AszFhbWzCKIiD5clyu1oZ/pz9JUS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P1Q+D4NexqNNTDIbmFASjLUyHZ2UwrDRPpa+KPUsiiw=;
 b=RH2VQfoAC2Hw9MuIKIT1zGTHCCWL10Xw/4ne7Qp3ZnrQxu+TLqVaTS2JtqCFRlfCyP
 qfyAAiDCw4idZMFR4xOKsv1wrwg3risgW3JP9NeW5NxUFVOulYvaAICMlct5M7nVBncI
 uqUwUjTg0NkTJ7W5ujcT4Cd66LpHUV+idX8JfwMWnvAeTwc8wlHp6RdnZwZDTf2oUIIc
 YKiFw5YQzuUc+CVP9CshJxdsSVR68E8+qchPWIuM27uOa+PVWjsqsTTCT1ZcIaGgQKIq
 gbF6AQ2QCX5uLey8gjLCRkaWFTPlcW9gWkQJh4Wam3bRr8c0diMqEDjF1QA3dklWmirm
 xpbA==
X-Gm-Message-State: APjAAAX/vRkFDWOP/65RdkeXKXQ2AQ6dXLTkcTLnv2o8RnSfIjZeBo9T
 2BJqpauxW1HID0wL6nYEIBG0u8TsXEg=
X-Google-Smtp-Source: APXvYqz2ZoOogjQzx+kUvFaP0axxLJD7aLz4+Sq3Dkr3eECeWCx1qLO42DusiHmQ/ykI5C6Uq1paaQ==
X-Received: by 2002:a17:90a:4803:: with SMTP id
 a3mr2333160pjh.58.1561025282908; 
 Thu, 20 Jun 2019 03:08:02 -0700 (PDT)
Received: from localhost.localdomain ([183.82.229.140])
 by smtp.gmail.com with ESMTPSA id x129sm21731387pfb.29.2019.06.20.03.08.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:08:02 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v4 1/6] Makefile: clean image.map
Date: Thu, 20 Jun 2019 15:37:35 +0530
Message-Id: <20190620100740.6560-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620100740.6560-1-jagan@amarulasolutions.com>
References: <20190620100740.6560-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_030803_420792_82115635 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

binman tools for creating single image build will create image.map
at the end, which has information about binman image node details.

current u-boot, is unable to clean this image.map so add a command
entry in clean target in Makefile.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 9fba74d3ed..804eb2c652 100644
--- a/Makefile
+++ b/Makefile
@@ -1847,7 +1847,8 @@ clean: $(clean-dirs)
 		-o -name modules.builtin -o -name '.tmp_*.o.*' \
 		-o -name 'dsdt.aml' -o -name 'dsdt.asl.tmp' -o -name 'dsdt.c' \
 		-o -name '*.efi' -o -name '*.gcno' -o -name '*.so' \) \
-		-type f -print | xargs rm -f
+		-type f -print | xargs rm -f \
+		image.map
 
 # mrproper - Delete all generated files, including .config
 #
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
