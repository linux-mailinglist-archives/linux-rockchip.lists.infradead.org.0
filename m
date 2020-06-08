Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9EF1F1F0A
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 20:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57rz4QwljcCON8wNHHKITgWfe9kFFUf7q8v8MqiaZw8=; b=jMb4Rpym7lT5Yu
	VWw4fYGTvf+1dO6/CmkVIRCtHYOHTZDkqdkdgDuqQBFyclYNA1UN8aoNZ+US+ok2XbAUMdXA7LbWF
	HGosTJRzjXvcF2m3JwyExSl1ebyppUmtSI6RYzVbbyYv728PzsZ19wiR70pud2TkTQLBXJ7CvQ7a/
	wRNdN1pq+ybPzkZKCDl8xe2v7D6UUMa7KMNDRCe+/92gVybc47oGYPWx464f8RR4mPxZ81WqjBbuH
	QNEf9xtGjSZ5ux6vYvP7kZ0+UfoImKB1nw0kj/U3560X5gw+DWHWir5f0B08l5/8S9ebM+TBm7ddp
	4CmjA5Svlg2rHGyKO79g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMZ6-0003CU-Ce; Mon, 08 Jun 2020 18:32:08 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMZ3-0003Aw-8c
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 18:32:06 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ne5so189109pjb.5
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2020 11:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=whusgV3SuU4OYdnISZ0eE6+udK0GNJd8qRyaT+j/kBs=;
 b=o4vOcHSlGohJvcJZsnzHRbPKP7nyciDvvH7VydgtrjIIASHxjDjpDCWmH2j7VWkyzM
 cLp9+WZJSK2eXzZC/ciB0FJYmvZJu8nmr7uwP/JbgmnVXEiisOENPge7hiJX9HFawMdw
 wXfzXOF+3FzlQZOGbjbeZeTc1YqoEnXXZguyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=whusgV3SuU4OYdnISZ0eE6+udK0GNJd8qRyaT+j/kBs=;
 b=NhTDgkgVqy8J0DXMSuOVIjDwZdhIiIifqK83rGIWDJnJeKYZtQBCEhyd+q1v+2cAIF
 Mzpsi8yHDeVlU4jO2sTdV4w3vjp3nAAjg/9V4ocyMu552uqxsCzwcvh7QORPim8W1oSJ
 et5rs1lOTudAEWA9Ear+FTnIVgBBicZToWTn0IBEehksR6pfSX6d3o3WO+TpbvnsqG3N
 XAi6yt+SkkkW8C2LE5a/R8wsoiAlPGDwb0eqzkmnhiHSLIe87oNxWWnAkm6akmwO3DAT
 lUK9qGxESWLxYEjcUQ6j50Ss81JJ+NGKNJBMzDD9AtEqCovqSH4Z89ltP78IqFYgN2xK
 u6Hw==
X-Gm-Message-State: AOAM532tmS9ViE5bF3y1wV2R8pUlmTtc5hicEp5cgH+kf36OClHqzHY3
 t3SYe0SQXNmE8cqFO31nTCCXSQ==
X-Google-Smtp-Source: ABdhPJz3Uf3oNHvSfG8gGMGJlnb3J6nbhjLmIQw3YuaF9MqH/XeL08lK3vefRaK8yOlV+gJUP0lgtg==
X-Received: by 2002:a17:90b:110f:: with SMTP id
 gi15mr622869pjb.87.1591641124486; 
 Mon, 08 Jun 2020 11:32:04 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9043:af95:b7b4:3ade])
 by smtp.gmail.com with ESMTPSA id k29sm6680961pgf.77.2020.06.08.11.32.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:32:03 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v3 2/5] rk3399: spl: Print SPL banner after relocation
Date: Mon,  8 Jun 2020 14:31:41 -0400
Message-Id: <20200608183144.26809-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608183144.26809-1-jagan@amarulasolutions.com>
References: <20200608183144.26809-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_113205_318354_6BB4FD4B 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VXN1YWxseSBwcmludGluZyB0aGUgU1BMIGJhbm5lciB2YXJpZXMgYmV0d2VlbiBhcmNoaXRlY3R1
cmUKb3IgYm9hcmQgY29kZXMuCi0gU29tZSB3b3VsZCBwcmludCBiZWZvcmUgcmVsb2NhdGlvbiBh
dCB0aGUgZW5kIGJvYXJkX2luaXRfZgrCoCBmb3IgbWFraW5nIHN1cmUgYWxsIGluaXRpYWxpemF0
aW9uIHByaW9yIHRvIHRoaXMgd291bGQgaGFwcGVuCsKgIHByb3Blcmx5LiBpZiBhdCBhbGwgdGhl
cmUgaXMgYSByZXF1aXJlbWVudCBmb3Igc2VyaWFsIGluaXQsCsKgIHRoYXQgaGFwcGVucyBwcm9w
ZXJseSBzaW5jZSBpdCBwcmludHMgYWxsIGFmdGVyIHRoYXQuCi0gU29tZSB3b3VsZCBwcmludCBh
ZnRlciByZWxvY2F0aW9uIGF0IHRoZSBzcGxfYm9hcmRfaW5pdCBmb3IKwqAgbWFraW5nIHN1cmUg
YWxsIGluaXRpYWxpemF0aW9uIHByaW9yIHRvIHJlbG9jYXRpb24gd291bGQKICBoYXBwZW4gcHJv
cGVybHkuIEFsc28gZGVidWcgdWFydCBvbiB0aGVzZSBjYXNlcyB3b3VsZCBiZQogIGF2YWlsYWJs
ZSBiZWZvcmUgcmVsb2NhdGlvbi4gU28gZGVidWcgc3VwcG9ydCBpcyBhdmFpbGFibGUKICBpbiBi
ZWZvcmUgYW5kIGFmdGVyIHJlbG9jYXRpb24uCgpSb2NrY2hpcCBTUEwgaXMgZm9sbG93aW5nIGZv
cm1hciBzdGVwIHRvIHByaW50IHRoZSBiYW5uZXIgYXQKdGhlIGVuZCBvZiBib2FyZF9pbml0X2Yu
CgpUbyBzdXBwb3J0IHZhcmlvdXMgY3VzdG9tIHVzZSBjYXNlcyBpbiBTUEwgbGlrZSBsZWRzLCBl
bnZpcm9ubWVudCwKYm9hcmQgZGV0ZWN0aW9ucyBsYXRlciBvcHRpb25zIGxpa2UgcHJpbnRpbmcg
dGhlIGJhbm5lciBhZnRlcgpyZWxvY2F0aW9uIHdvdWxkIGJlIGEgYmV0dGVyIG9wdGlvbi4gUHJp
bnRpbmcgYmFubmVyIHdvdWxkIGFsc28KaGVscCB0byBzdXBwb3J0IGRlYnVnZ2luZyBhdmFpbGFi
aWxpdHkgYmV0d2VlbiByZWxvY2F0aW9uIGNvZGVzLApsaWtlIGRlYnVnIHVhcnQgYXZhaWxhYmxl
IGJlZm9yZSByZWxvY2F0aW9uIGFuZCBiYW5uZXIgYXZhaWxhYmlsaXR5CmFmdGVyIHJlbGF0aW9u
LgoKQnkgZGVtb25zdHJhdGluZyBhbGwgdGhlIGFib3ZlIHVzZSBjYXNlcywgdGhpcyBwYXRjaCBp
cyB0cnlpbmcKdG8gcHJpbnQgdGhlIFNQTCBiYW5uZXIgYWZ0ZXIgcmVsb2NhdGlvbi4KClNpZ25l
ZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpUZXN0ZWQt
Ynk6IFN1bmllbCBNYWhlc2ggPHN1bmlsQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgotLS0KQ2hhbmdl
cyBmb3IgdjM6Ci0gbmV3IHBhdGNoCgogYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMzOTkvcmsz
Mzk5LmMgfCAyICsrCiBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3NwbC5jICAgICAgICAgICB8IDEg
LQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS9yazMzOTkuYyBiL2FyY2gvYXJt
L21hY2gtcm9ja2NoaXAvcmszMzk5L3JrMzM5OS5jCmluZGV4IDY4MWY4MGYzMzkuLmFmNGIwZTI3
MWIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMzk5L3JrMzM5OS5jCisr
KyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMzk5L3JrMzM5OS5jCkBAIC0yNzksNiArMjc5
LDggQEAgdm9pZCBzcGxfYm9hcmRfaW5pdCh2b2lkKQogewogCS8qIGJvYXJkIHNwZWNpZmljIHNw
bCBpbml0ICovCiAJcmtfc3BsX2JvYXJkX2luaXQoKTsKKworCXByZWxvYWRlcl9jb25zb2xlX2lu
aXQoKTsKIH0KIAogI2VuZGlmCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3Nw
bC5jIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9zcGwuYwppbmRleCBjZGRmNGZkM2Q1Li4xYzJk
Y2E4YTcyIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3NwbC5jCisrKyBiL2Fy
Y2gvYXJtL21hY2gtcm9ja2NoaXAvc3BsLmMKQEAgLTE0Nyw3ICsxNDcsNiBAQCB2b2lkIGJvYXJk
X2luaXRfZih1bG9uZyBkdW1teSkKIAlnZC0+cmFtX3RvcCA9IGdkLT5yYW1fYmFzZSArIGdldF9l
ZmZlY3RpdmVfbWVtc2l6ZSgpOwogCWdkLT5yYW1fdG9wID0gYm9hcmRfZ2V0X3VzYWJsZV9yYW1f
dG9wKGdkLT5yYW1fc2l6ZSk7CiAjZW5kaWYKLQlwcmVsb2FkZXJfY29uc29sZV9pbml0KCk7CiB9
CiAKICNpZmRlZiBDT05GSUdfU1BMX0xPQURfRklUCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
