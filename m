Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E0DB5BD
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 11:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/FO8XpIB/kTYVCQeEgJAQ13fDZBvtgpk7zpl9kQvSw=; b=Ntiwh8LRK+Lx7I
	aVAphlBQfCFYMaKdi2/ZDsiwG++o+58o9I/DS+1cIJiJKYQWGsSYonDIWRqm4jWAmech8iCfTsig7
	Ci7f019dRpN22TeGSBNM45bWLgXQOD+MHGfU6Ho9sqiWw/GDB4qqxTRgUrGO5U20G9/qC/L96Fi5S
	OTgQbChbbjAYaVOCxpUALa7lyTOL0KnxtVgQGwDq07Fv9J7R5iSKBtGP5XlRCHf4tPKPkQh6zkMKH
	UIu5ufVE41fCX95oHhfDGiv9xbQHbi+AHs4TJAZPW++kpsJje4BwU4XU8mzs9LMTUMVQhgvrm/h6L
	/b/j1IrjPrtRXvJXsFCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfoe-0000ut-BP; Sun, 28 Apr 2019 09:09:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfoa-0000tS-SY
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 09:09:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id t22so696084pgi.10
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 02:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hBCXYpHPkNhquxP0xZtz9CZGTunnfLjnuK4fNTlVrpw=;
 b=NwiUJDavwzwkWcKhVGDSbq1dpbGSHLDy4ONwBxqJRZlsV1oQfmQPqnjWCyXIvnen1g
 ToeOBm2gei2H5S5HLRyach33h9adILQOLFpk9JJUfRJRlJZME/eLlwbiGCi8Jt6H3XvU
 nmlVnCgIGTfVBsaALv9nVcxLyJ2qGXVCTOKKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hBCXYpHPkNhquxP0xZtz9CZGTunnfLjnuK4fNTlVrpw=;
 b=ck/VhQ8rCm/CgoqJLEHG2CTcsBCghl8UI5OJMmsyvCvWc/wdJVUDphq6Fh8anHrzq1
 rpQPNMHuwuNxufG5YcbTUMY4HVmHPIVM6uXObEi5SX+X5/wkJT4VxDRm5KD3s9/G6QdA
 pPXaXOgqhJ34V4hS8GJ+APHRu1x4k1oQMFa6DQXaetKwS6fDbNX3P/N59sJlXS5nGHrw
 EUGH+m87NU4M9VekXOyOkXMg7Tdg1F5Z4vKxhmdL5n3pKf9VwSA8eyjiAEJBkcMqgUT/
 Lhsng3jOmb2hqnBkjGFU6/62E1Pey/8HcySRy3HeATVh6xm8SZU1qkeUXXYocsVus9m4
 QjKA==
X-Gm-Message-State: APjAAAUMQ9rCqopvnxALFcNpr+NTk6GVMmZPsj82RXy0HDccuh/iS8hg
 vUzy6t9VM7KVyo4xTPDS2QTVHjr5xQU=
X-Google-Smtp-Source: APXvYqwoVA7fzm5NTiPHy6RCiwD48Nsd4A9wIusBGg5xN6w6vlBfsplEqan7x6pNgFHAp7IK7DFf4Q==
X-Received: by 2002:a63:7504:: with SMTP id q4mr21908504pgc.443.1556442580417; 
 Sun, 28 Apr 2019 02:09:40 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k7sm3040338pfk.93.2019.04.28.02.09.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:09:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 3/9] travis.yml: Add pyelftools install entry
Date: Sun, 28 Apr 2019 14:39:07 +0530
Message-Id: <20190428090913.10568-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190428090913.10568-1-jagan@amarulasolutions.com>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_020940_922126_B1E4A04E 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Currently rockchip platform is using explicit 'make u-boot.itb' for
building u-boot.itb but if we enable CONFIG_BUILD_TARGET as 'u-boot.itb'
then the resulting u-boot.itb directly will create by make.

But, that indeed make travis build fail since it require python-pyelftools
host package.

So add pyelftools install entry as 'pip install pyelftools', this would
create pyelftools on travis host which are required to build rk3399 itb.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .travis.yml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.travis.yml b/.travis.yml
index eb531f1e5b..6dbbb5dd02 100644
--- a/.travis.yml
+++ b/.travis.yml
@@ -49,6 +49,7 @@ install:
  - . /tmp/venv/bin/activate
  - pip install pytest==2.8.7
  - pip install python-subunit
+ - pip install pyelftools
  - grub-mkimage -o ~/grub_x86.efi -O i386-efi normal  echo lsefimmap lsefi lsefisystab efinet tftp minicmd
  - grub-mkimage -o ~/grub_x64.efi -O x86_64-efi normal  echo lsefimmap lsefi lsefisystab efinet tftp minicmd
  - mkdir ~/grub2-arm
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
