Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E181287FE
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTRDkuqiKJ6ElvdB91G4a5+QPZVtCyM00yWkJkr0jNo=; b=dPPRCLGp/e33V2
	L6Ls7ZuhVtJ6lCQhXTtGOZ/0ADPQVWWiCh0jRsfNofNTRSypMKvkU5SlIaBi+CSmYiSNRoRnLLPUQ
	n2YJK7FnR7xJuXHZTjX8tnPuxo7brpXJUTazpdYpJU3zihpICY8y0feX7pxCnFBJuJWJmFe8VaLaM
	4p81/WP7OYtQuGIVmJSNPWGPjoXfKyPLTz0B/CzVUvYm4i8FpsHV2JAalH0csgVcBTvZH24HRKOkj
	I4C94sRvSp4jWOGelkzdyAoEQ9SJYrvg07RdPlBWxEGwGf2dsbGVh6Bs54+Wwt6sU1Y3dMgPTYHCk
	rxeQFKZ2QjIRI/j+NDPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbW-0006Y6-PG; Sat, 21 Dec 2019 07:55:14 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbM-0005Me-9Q
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:55:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id a33so6141503pgm.5
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PD7PDJsuTgCP1UNeKowZcnqFlFTcD11r0cEdAJpebdc=;
 b=QlsOmyiXdhACOT+Dgoqs2oT/LCR4Lh/z7BoRwe0BUoblcZIaUXolPu5898ysEd5f4W
 RdP63z5jA53NY2vpkap7151WfmP/qADXrkwBKJrHVnStsuM0kb1fTZjbR1aDgUVrTl9j
 SvmEUDzSO63FGQfGvut9XVWj8cvIzZfLdGR84=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PD7PDJsuTgCP1UNeKowZcnqFlFTcD11r0cEdAJpebdc=;
 b=tDOplljbBhH9e7jHHt5mmGhmX49GoMXZCgEsM5L4SvmRf6OiFkBlG/fWMj+p8lH3mB
 N2ib0XdptGA7OuP34YDfamhM1ihCCSTEUME+SnruUOJiaMC/pC8b1yl6EfF23l/0/nYw
 cvgXUnm6Q07hGWG84wcO7gZw3l5Qvjbem0wSPlWp1XaHYonQjUS5t6cDd1BkgSaCswWS
 fLomlHO0FNEBurgsmeYRYhsz0LFUisKAIzcq5aV2kPHOdwbcMQ2jV1tJxTrD7MruHpqW
 8bIP5NT8bpIr0D3xipKHrH2E6l2XwfvAyfxV1cEQ7TfrUNZSgrGvPVE1VGoIGn/ndkTC
 W7eg==
X-Gm-Message-State: APjAAAW0N4hLqk1z10wLDv2IuKMiuvWFLrLyTpN++NsmkmS8GzDCyq+Y
 dg6x0SflsB9zDdFVTmkTF0lyYg==
X-Google-Smtp-Source: APXvYqy/ytiGINEeMuwf5SQLkVgaG9b8hUQlP80YpzMKs8bZyx+lsFjMxPgxWcWcHJf4W3s8+lJ4mA==
X-Received: by 2002:a63:1853:: with SMTP id 19mr18839965pgy.170.1576914902953; 
 Fri, 20 Dec 2019 23:55:02 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.55.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:55:02 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 04/11] rk3399: Add boot flash script offet, size
Date: Sat, 21 Dec 2019 13:24:33 +0530
Message-Id: <20191221075440.6944-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191221075440.6944-1-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235504_403653_BE5C8429 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TW9zdCBvZiB0aGUgU1BJIGZsYXNoIGRldmljZXMgaW4gcm9ja2NoaXAgKHJrMzM5OSkKYXJlIDE2
TWlCIHNpemUuIFNvLCBsZXQncyB1c2UgdGhlIHNjcmlwdCBvZmZzZXQgYXQKdGhlIGVuZCBvZiA4
Sy7CoAoKVGhpcyB3YXkgaXQgY2Fubm90IG92ZXJsYXAgYW55IG9mZnNldHMgYmVpbmcgdXNlZApi
eSBzb2Z0d2FyZSBjb21wb25lbnRzIGluIGZsYXNoIGxheW91dC4KClNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgotLS0KIGluY2x1ZGUvY29uZmln
cy9yazMzOTlfY29tbW9uLmggfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaCBiL2luY2x1ZGUv
Y29uZmlncy9yazMzOTlfY29tbW9uLmgKaW5kZXggMTI3Y2ExZjA5Yy4uOTJlYjVjYjc1MCAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAorKysgYi9pbmNsdWRlL2Nv
bmZpZ3MvcmszMzk5X2NvbW1vbi5oCkBAIC00OCw2ICs0OCw4IEBACiAKICNkZWZpbmUgRU5WX01F
TV9MQVlPVVRfU0VUVElOR1MgXAogCSJzY3JpcHRhZGRyPTB4MDA1MDAwMDBcMCIgXAorCSJzY3Jp
cHRfb2Zmc2V0X2Y9MHhmZmUwMDBcMCIgXAorCSJzY3JpcHRfc2l6ZV9mPTB4MjAwMFwwIiBcCiAJ
InB4ZWZpbGVfYWRkcl9yPTB4MDA2MDAwMDBcMCIgXAogCSJmZHRfYWRkcl9yPTB4MDFmMDAwMDBc
MCIgXAogCSJrZXJuZWxfYWRkcl9yPTB4MDIwODAwMDBcMCIgXAotLSAKMi4xOC4wLjMyMS5nZmZj
NmZhMGUzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
