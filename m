Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D79B5BA
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 11:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpRugTzDpGs/mAt1XUJLcuWnCtAXUsMdhEycfaTPAvo=; b=GHYcFy8xUWIJMq
	djvAV7l123FuvClwxO/gEbZpIzlLTRmY7iL1c6F6JslFjGXcEI3OwgReE8CeqnOdIr9JintWmslGp
	hL0mhcnMtJcAUvvFu0rZtkeVe0KPW2O/EsJTnTvsKKermWy1cZ5g1GzvBnbxepfq0xSpc5tBjCvd/
	TrrmkfLPFOntIcLT+tfF0lSYjEs9qAN7IOCcI1MGSp/h1VaDhx3Wdp96C+/dJwx+zukcSdL/HWQkQ
	0AMprNnr4ttN79bS9P8zBghSmDTdm/JFX/2AK3woIyvHxg5Y4cEb+Juv84NrKAKXhQpza2GtWK2Ks
	qilDnIRF/fF54bHmYWQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfoV-0000o3-3Q; Sun, 28 Apr 2019 09:09:35 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfoR-0000nT-KG
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 09:09:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id f36so3638306plb.5
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 02:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5+ktBmcEqonH5rPmgSadgYviy3zTlgCbf0riGNhR3/g=;
 b=o91/C98EMyhg22wvXxQrmhGjaC4l1x8a3ilADEQtdKGREPhih7lt28miF3kQzngSfo
 6Vu5jSAUExWMOpFFwgics9LVQETkXF7udEQzZ7vYST75w53aSkpc2c8paGQEzrEFUPNx
 SVk+ZZjq+99VzRlb3BBTFY1jHVyF65IVZXhR0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5+ktBmcEqonH5rPmgSadgYviy3zTlgCbf0riGNhR3/g=;
 b=nkTsMCQNwxO2pv2baC/B+6brV2/vXx73oNZbz4VYx3JTdlkQ+P4gj9tl/lZWARjh2d
 7Na3xoGhdJZ09bSAPG7QLMxoNZa0qssPEOEkf4MK5gPGqSDWBXJ7aeE4O+tRa/cqiMKJ
 sOmueqiZjqltsuknpjiJ5WHNHKsPBfsX3Xwqii+7K10FTyEfORt9Sj/zf+DvLlqu6Ngx
 1sgt88c+WSWC4seGLPmuRWK04vx3nXIVeXDbnbsIAREIUIgB5a42T7LKo6OvEMb4oRwn
 S7V2/X26pA/V6zcMXJEqXuahFh8ceTzCcZddWXdHQjLRv1ZAf7thyhbZ6bAlYZqnjzCA
 duiQ==
X-Gm-Message-State: APjAAAXcGIOagD5t/KvaL+JUt7DJxMH3lQC7qGFhER4EmqCvTPnHz6kf
 6O10QFHniHax5FCNartm+Hbuew==
X-Google-Smtp-Source: APXvYqx5qmdLdaVCpXk3nkRUnKC1OZuOX9E7hFsCGdZXt6yDxKlvtx6bdRpsoSoJ2rKF+hTLp1aKRw==
X-Received: by 2002:a17:902:4643:: with SMTP id
 o61mr31934660pld.249.1556442570747; 
 Sun, 28 Apr 2019 02:09:30 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k7sm3040338pfk.93.2019.04.28.02.09.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:09:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 1/9] Makefile: clean image.map
Date: Sun, 28 Apr 2019 14:39:05 +0530
Message-Id: <20190428090913.10568-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190428090913.10568-1-jagan@amarulasolutions.com>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_020931_663117_4DBE60DF 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

binman tools for creating single image build will create image.map
at the end, which has information about binman image node details.

current u-boot, is unable to clean this image.map so add a command
entry in clean target in Makefile.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 92e04dd689..54e8fedff0 100644
--- a/Makefile
+++ b/Makefile
@@ -1781,7 +1781,8 @@ clean: $(clean-dirs)
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
