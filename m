Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F407616A52
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjvJ+uazcCzBQSPOjzVJv9Qf4U06x+dKx6CPmm46Tb0=; b=ZoqnE8TyIklDD1
	wMUrmpNdvILoqJYngdtRH0TAMhLteDcgvyVxQJASS3R/bNv4clzHuEc+6eowxkQGgOj7bYwyTSrcq
	1l7tf7pIVAv/UcBSkLK/LG+INXunSZLVqGMI74ggUeiG6gHqY0sHBOLMRe1GTf/klMjvjWHg+gEeb
	4kqLEzIBfmM8pxZsvyxsn+nc6zpVT46f4pInJAZIXgdT+uX8M0jpeyvOUy9HPfGZyjmg+TlCNE6Q/
	SXsaoh7YcddVf6h9O0JMyy6ajGY50aza8M+CFydATc+aDkrFdaOu41+Y4sLBFAHo5ZUVFe44s3ZdR
	ss4MS356+6W5m2XGnWBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4xh-0001By-0L; Tue, 07 May 2019 18:37:09 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4xd-00019c-Iv
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:37:07 +0000
Received: by mail-pg1-x543.google.com with SMTP id 85so8738854pgc.3
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qOuqvJsXsaIE/PUqrE+XDRNkiTfqMwptU27sBfda3uM=;
 b=Yzd1SrYn0+xHjq/gOfZ2NOoDZX7Q8UJy/rsLMQDgtB0OKUHZfCYnFC2izP1JFpLUV+
 avj7GC1N84vTkvT43zFXYSpPL/qKrCjIKnbK/emk9QB2lJ6a1YIl+gk13NFMN5K6TaL1
 kVZcbdfBHzUr5c6TtGSCGb0WPANs54w09gKDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qOuqvJsXsaIE/PUqrE+XDRNkiTfqMwptU27sBfda3uM=;
 b=FRNdKe4uRNaXRWyPPinsY0xY3LDJzEkUV5AeXPnJUGPTyWNteZVjgOJ71e5Xu9cylt
 11/OTyQ8ZrKhVUwUZ/gV1eojtkF2zg+9s+6iXPkD3EHVQzZB7xAwjUW5b1J5l4BgdM/9
 Udphwd1zQLcU9tg/mEfcUHMESF3dChaKYLNH2v8RvM8tgIeSOPN5YOtD2m/YEdgjmmAI
 toI/X2TOnlzFbAdR3xREezLtZNJMk+jwQICYi8pTY3ZAHMtbKn0QO+TIRcRoPSonWn4V
 9mH581un0R1d6x6GZQjKROTIKIr5fOgGdMgm4R2rQUQlxYTO/zo9gZe03zxrel1jkIMq
 /yGQ==
X-Gm-Message-State: APjAAAU7cbkzuJir97d7zCtTd6/+XzvoR5n+kHANQBn5zbs0rX3UvEmj
 l1U1mYUK/5rz0W/0wpJ/UU9ARA==
X-Google-Smtp-Source: APXvYqy2y+oNGMPkJhEpzkQXKrldLiB6Y/OvNJN/n4BWZzuM/NSrpQCcEdt6vcseVOZo6MplhfIM1g==
X-Received: by 2002:a62:56c3:: with SMTP id h64mr7112167pfj.163.1557254224943; 
 Tue, 07 May 2019 11:37:04 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id b22sm21743728pgg.88.2019.05.07.11.37.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:37:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 07/11] rockchip: rk3399: Add Nanopc T4 board support
Date: Wed,  8 May 2019 00:06:23 +0530
Message-Id: <20190507183625.5983-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507183625.5983-1-jagan@amarulasolutions.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_113705_635464_8FEA616C 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

QWRkIGluaXRpYWwgc3VwcG9ydCBmb3IgTmFub3BjIFQ0IGJvYXJkLgoKU3BlY2lmaWNhdGlvbgot
IFJvY2tjaGlwIFJLMzM5OQotIER1YWwtQ2hhbm5lbCA0R0IgTFBERFIzLTE4NjYKLSBTRCBjYXJk
IHNsb3QKLSAxNkdCIGVNTUMKLSBSVEw4MjExRSAxR2JwcwotIEFQNjM1NlMgV2lGSS9CVAotIEhE
TUkgSW4vT3V0LCBEUCwgTUlQSSBEU0kvQ1NJLCBlRFAKLSBVU0IgMy4wLCAyLjAKLSBVU0IgVHlw
ZSBDIHBvd2VyIGFuZCBkYXRhCi0gR1BJTyBleHBhbnNpb24gcG9ydHMKLSBEQyAxMlYvMkEKCkNv
bW1pdCBkZXRhaWxzIG9mIHJrMzM5OS1uYW5vcGMtdDQuZHRzIHN5bmMgZnJvbSBMaW51eCA1LjEt
cmMyOgoiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBOYW5vUEMtVDQgSVIgcmVjZWl2ZXIiCihz
aGExOiA5NTY1OGUyMWIxNzA3YWQ3ODQ0Zjg3M2RiMmZkYWEyOTUxMDlhNWEzKQoKVGVzdGVkLWJ5
OiBEYW5pZWwgR3LDtmJlciA8ZHhsZEBkYXJrYm94ZWQub3JnPgpTaWduZWQtb2ZmLWJ5OiBKYWdh
biBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KLS0tCiBhcmNoL2FybS9kdHMvTWFr
ZWZpbGUgICAgICAgICAgICAgICAgICAgICB8ICAxICsKIGFyY2gvYXJtL2R0cy9yazMzOTktbmFu
b3BjLXQ0LXUtYm9vdC5kdHNpIHwgIDcgKysKIGFyY2gvYXJtL2R0cy9yazMzOTktbmFub3BjLXQ0
LmR0cyAgICAgICAgIHwgOTEgKysrKysrKysrKysrKysrKysrKysrKysKIGJvYXJkL3JvY2tjaGlw
L2V2Yl9yazMzOTkvTUFJTlRBSU5FUlMgICAgIHwgIDYgKysKIGNvbmZpZ3MvbmFub3BjLXQ0LXJr
MzM5OV9kZWZjb25maWcgICAgICAgIHwgNTkgKysrKysrKysrKysrKysrCiA1IGZpbGVzIGNoYW5n
ZWQsIDE2NCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vZHRzL3Jr
MzM5OS1uYW5vcGMtdDQtdS1ib290LmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9k
dHMvcmszMzk5LW5hbm9wYy10NC5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBjb25maWdzL25hbm9w
Yy10NC1yazMzOTlfZGVmY29uZmlnCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL01ha2VmaWxl
IGIvYXJjaC9hcm0vZHRzL01ha2VmaWxlCmluZGV4IDJhNWJmZDNmYjUuLmFkYWNhNTI0YzMgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtL2R0cy9NYWtlZmlsZQorKysgYi9hcmNoL2FybS9kdHMvTWFrZWZp
bGUKQEAgLTEwNiw2ICsxMDYsNyBAQCBkdGItJChDT05GSUdfUk9DS0NISVBfUkszMzk5KSArPSBc
CiAJcmszMzk5LWZpY3VzLmR0YiBcCiAJcmszMzk5LWZpcmVmbHkuZHRiIFwKIAlyazMzOTktZ3J1
LWJvYi5kdGIgXAorCXJrMzM5OS1uYW5vcGMtdDQuZHRiIFwKIAlyazMzOTktbmFub3BpLW00LmR0
YiBcCiAJcmszMzk5LW9yYW5nZXBpLmR0YiBcCiAJcmszMzk5LXB1bWEtZGRyMTMzMy5kdGIgXApk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JrMzM5OS1uYW5vcGMtdDQtdS1ib290LmR0c2kgYi9h
cmNoL2FybS9kdHMvcmszMzk5LW5hbm9wYy10NC11LWJvb3QuZHRzaQpuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwLi4xNzIwMWJjZjQxCi0tLSAvZGV2L251bGwKKysrIGIvYXJj
aC9hcm0vZHRzL3JrMzM5OS1uYW5vcGMtdDQtdS1ib290LmR0c2kKQEAgLTAsMCArMSw3IEBACisv
LyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsKKy8qCisgKiBDb3B5cmlnaHQgKEMp
IDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CisgKi8KKworI2lu
Y2x1ZGUgInJrMzM5OS1uYW5vcGk0LXUtYm9vdC5kdHNpIgorI2luY2x1ZGUgInJrMzM5OS1zZHJh
bS1scGRkcjMtc2Ftc3VuZy00R0ItMTg2Ni5kdHNpIgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRz
L3JrMzM5OS1uYW5vcGMtdDQuZHRzIGIvYXJjaC9hcm0vZHRzL3JrMzM5OS1uYW5vcGMtdDQuZHRz
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAuLjg0NDMzY2YwMmIKLS0tIC9k
ZXYvbnVsbAorKysgYi9hcmNoL2FybS9kdHMvcmszMzk5LW5hbm9wYy10NC5kdHMKQEAgLTAsMCAr
MSw5MSBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCisv
KgorICogRnJpZW5kbHlFbGVjIE5hbm9QQy1UNCBib2FyZCBkZXZpY2UgdHJlZSBzb3VyY2UKKyAq
CisgKiBDb3B5cmlnaHQgKGMpIDIwMTggRnJpZW5kbHlFbGVjIENvbXB1dGVyIFRlY2guIENvLiwg
THRkLgorICogKGh0dHA6Ly93d3cuZnJpZW5kbHlhcm0uY29tKQorICoKKyAqIENvcHlyaWdodCAo
YykgMjAxOCBDb2xsYWJvcmEgTHRkLgorICovCisKKy9kdHMtdjEvOworI2luY2x1ZGUgInJrMzM5
OS1uYW5vcGk0LmR0c2kiCisKKy8geworCW1vZGVsID0gIkZyaWVuZGx5RWxlYyBOYW5vUEMtVDQi
OworCWNvbXBhdGlibGUgPSAiZnJpZW5kbHlhcm0sbmFub3BjLXQ0IiwgInJvY2tjaGlwLHJrMzM5
OSI7CisKKwl2Y2MxMnYwX3N5czogdmNjMTJ2MC1zeXMgeworCQljb21wYXRpYmxlID0gInJlZ3Vs
YXRvci1maXhlZCI7CisJCXJlZ3VsYXRvci1hbHdheXMtb247CisJCXJlZ3VsYXRvci1ib290LW9u
OworCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAwMD47CisJCXJlZ3VsYXRvci1t
aW4tbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjMTJ2MF9z
eXMiOworCX07CisKKwl2Y2M1djBfaG9zdDA6IHZjYzV2MC1ob3N0MCB7CisJCWNvbXBhdGlibGUg
PSAicmVndWxhdG9yLWZpeGVkIjsKKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKKwkJcmVndWxhdG9y
LWJvb3Qtb247CisJCXJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF9ob3N0MCI7CisJCXZpbi1zdXBw
bHkgPSA8JnZjYzV2MF9zeXM+OworCX07CisKKwlhZGMta2V5cyB7CisJCWNvbXBhdGlibGUgPSAi
YWRjLWtleXMiOworCQlpby1jaGFubmVscyA9IDwmc2FyYWRjIDE+OworCQlpby1jaGFubmVsLW5h
bWVzID0gImJ1dHRvbnMiOworCQlrZXl1cC10aHJlc2hvbGQtbWljcm92b2x0ID0gPDE4MDAwMDA+
OworCQlwb2xsLWludGVydmFsID0gPDEwMD47CisKKwkJcmVjb3ZlcnkgeworCQkJbGFiZWwgPSAi
UmVjb3ZlcnkiOworCQkJbGludXgsY29kZSA9IDxLRVlfVkVORE9SPjsKKwkJCXByZXNzLXRocmVz
aG9sZC1taWNyb3ZvbHQgPSA8MTgwMDA+OworCQl9OworCX07CisKKwlpci1yZWNlaXZlciB7CisJ
CWNvbXBhdGlibGUgPSAiZ3Bpby1pci1yZWNlaXZlciI7CisJCWdwaW9zID0gPCZncGlvMCBSS19Q
QTYgR1BJT19BQ1RJVkVfTE9XPjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJcGlu
Y3RybC0wID0gPCZpcl9yeD47CisJfTsKK307CisKKyZwaW5jdHJsIHsKKwlpciB7CisJCWlyX3J4
OiBpci1yeCB7CisJCQkvKiBleHRlcm5hbCBwdWxsdXAgdG8gVkNDM1YzX1NZUywgZGVzcGl0ZSBi
ZWluZyAxLjhWIDovICovCisJCQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEE2IFJLX0ZVTkNfMSAm
cGNmZ19wdWxsX25vbmU+OworCQl9OworCX07Cit9OworCismc2RoY2kgeworCW1tYy1oczQwMC0x
Xzh2OworCW1tYy1oczQwMC1lbmhhbmNlZC1zdHJvYmU7Cit9OworCismdTJwaHkwX2hvc3Qgewor
CXBoeS1zdXBwbHkgPSA8JnZjYzV2MF9ob3N0MD47Cit9OworCismdTJwaHkxX2hvc3QgeworCXBo
eS1zdXBwbHkgPSA8JnZjYzV2MF9ob3N0MD47Cit9OworCismdmNjNXYwX3N5cyB7CisJdmluLXN1
cHBseSA9IDwmdmNjMTJ2MF9zeXM+OworfTsKKworJnZjYzN2M19zeXMgeworCXZpbi1zdXBwbHkg
PSA8JnZjYzEydjBfc3lzPjsKK307CisKKyZ2YnVzX3R5cGVjIHsKKwllbmFibGUtYWN0aXZlLWhp
Z2g7CisJZ3Bpb3MgPSA8JmdwaW80IFJLX1BEMiBHUElPX0FDVElWRV9ISUdIPjsKKwl2aW4tc3Vw
cGx5ID0gPCZ2Y2M1djBfc3lzPjsKK307CmRpZmYgLS1naXQgYS9ib2FyZC9yb2NrY2hpcC9ldmJf
cmszMzk5L01BSU5UQUlORVJTIGIvYm9hcmQvcm9ja2NoaXAvZXZiX3JrMzM5OS9NQUlOVEFJTkVS
UwppbmRleCBhZTQzODA1YTZhLi5mNTVjOTJmODBjIDEwMDY0NAotLS0gYS9ib2FyZC9yb2NrY2hp
cC9ldmJfcmszMzk5L01BSU5UQUlORVJTCisrKyBiL2JvYXJkL3JvY2tjaGlwL2V2Yl9yazMzOTkv
TUFJTlRBSU5FUlMKQEAgLTYsNiArNiwxMiBAQCBGOiAgICAgIGluY2x1ZGUvY29uZmlncy9ldmJf
cmszMzk5LmgKIEY6ICAgICAgY29uZmlncy9ldmItcmszMzk5X2RlZmNvbmZpZwogRjogICAgICBj
b25maWdzL2ZpcmVmbHktcmszMzk5X2RlZmNvbmZpZwogCitOQU5PUEMtVDQKK006CUphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgorUzoJTWFpbnRhaW5lZAorRjoJY29uZmln
cy9uYW5vcGMtdDQtcmszMzk5X2RlZmNvbmZpZworRjoJYXJjaC9hcm0vZHRzL3JrMzM5OS1uYW5v
cGMtdDQtdS1ib290LmR0c2kKKwogTkFOT1BJLU00CiBNOglKYWdhbiBUZWtpIDxqYWdhbkBhbWFy
dWxhc29sdXRpb25zLmNvbT4KIFM6CU1haW50YWluZWQKZGlmZiAtLWdpdCBhL2NvbmZpZ3MvbmFu
b3BjLXQ0LXJrMzM5OV9kZWZjb25maWcgYi9jb25maWdzL25hbm9wYy10NC1yazMzOTlfZGVmY29u
ZmlnCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAuLmQ5ZjIxMzdiNGMKLS0t
IC9kZXYvbnVsbAorKysgYi9jb25maWdzL25hbm9wYy10NC1yazMzOTlfZGVmY29uZmlnCkBAIC0w
LDAgKzEsNTkgQEAKK0NPTkZJR19BUk09eQorQ09ORklHX0FSQ0hfUk9DS0NISVA9eQorQ09ORklH
X1NZU19URVhUX0JBU0U9MHgwMDIwMDAwMAorQ09ORklHX1NQTF9MSUJDT01NT05fU1VQUE9SVD15
CitDT05GSUdfU1BMX0xJQkdFTkVSSUNfU1VQUE9SVD15CitDT05GSUdfU1lTX01BTExPQ19GX0xF
Tj0weDQwMDAKK0NPTkZJR19ST0NLQ0hJUF9SSzMzOTk9eQorQ09ORklHX1JPQ0tDSElQX1NQTF9S
RVNFUlZFX0lSQU09MHg0MDAwCitDT05GSUdfREVCVUdfVUFSVF9CQVNFPTB4RkYxQTAwMDAKK0NP
TkZJR19ERUJVR19VQVJUX0NMT0NLPTI0MDAwMDAwCitDT05GSUdfU1BMX1NUQUNLX1JfQUREUj0w
eDgwMDAwCitDT05GSUdfREVCVUdfVUFSVD15CitDT05GSUdfTlJfRFJBTV9CQU5LUz0xCitDT05G
SUdfREVGQVVMVF9GRFRfRklMRT0icm9ja2NoaXAvcmszMzk5LW5hbm9wYy10NC5kdGIiCisjIENP
TkZJR19ESVNQTEFZX0NQVUlORk8gaXMgbm90IHNldAorQ09ORklHX0RJU1BMQVlfQk9BUkRJTkZP
X0xBVEU9eQorQ09ORklHX1NQTF9URVhUX0JBU0U9MHhmZjhjMjAwMAorQ09ORklHX1NQTF9TVEFD
S19SPXkKK0NPTkZJR19TUExfU1RBQ0tfUl9NQUxMT0NfU0lNUExFX0xFTj0weDQwMDAKK0NPTkZJ
R19DTURfQk9PVFo9eQorQ09ORklHX0NNRF9HUFQ9eQorQ09ORklHX0NNRF9NTUM9eQorQ09ORklH
X0NNRF9TRj15CitDT05GSUdfQ01EX1VTQj15CisjIENPTkZJR19DTURfU0VURVhQUiBpcyBub3Qg
c2V0CitDT05GSUdfQ01EX1RJTUU9eQorQ09ORklHX1NQTF9PRl9DT05UUk9MPXkKK0NPTkZJR19E
RUZBVUxUX0RFVklDRV9UUkVFPSJyazMzOTktbmFub3BjLXQ0IgorQ09ORklHX09GX1NQTF9SRU1P
VkVfUFJPUFM9InBpbmN0cmwtMCBwaW5jdHJsLW5hbWVzIGNsb2NrLW5hbWVzIGludGVycnVwdC1w
YXJlbnQgYXNzaWduZWQtY2xvY2tzIGFzc2lnbmVkLWNsb2NrLXJhdGVzIGFzc2lnbmVkLWNsb2Nr
LXBhcmVudHMiCitDT05GSUdfRU5WX0lTX0lOX01NQz15CitDT05GSUdfUk9DS0NISVBfR1BJTz15
CitDT05GSUdfU1lTX0kyQ19ST0NLQ0hJUD15CitDT05GSUdfTU1DX0RXPXkKK0NPTkZJR19NTUNf
RFdfUk9DS0NISVA9eQorQ09ORklHX01NQ19TREhDST15CitDT05GSUdfTU1DX1NESENJX1JPQ0tD
SElQPXkKK0NPTkZJR19ETV9FVEg9eQorQ09ORklHX0VUSF9ERVNJR05XQVJFPXkKK0NPTkZJR19H
TUFDX1JPQ0tDSElQPXkKK0NPTkZJR19QTUlDX1JLOFhYPXkKK0NPTkZJR19SRUdVTEFUT1JfUFdN
PXkKK0NPTkZJR19SRUdVTEFUT1JfUks4WFg9eQorQ09ORklHX1BXTV9ST0NLQ0hJUD15CitDT05G
SUdfQkFVRFJBVEU9MTUwMDAwMAorQ09ORklHX0RFQlVHX1VBUlRfU0hJRlQ9MgorQ09ORklHX1NZ
U1JFU0VUPXkKK0NPTkZJR19VU0I9eQorQ09ORklHX1VTQl9YSENJX0hDRD15CitDT05GSUdfVVNC
X1hIQ0lfRFdDMz15CitDT05GSUdfVVNCX0VIQ0lfSENEPXkKK0NPTkZJR19VU0JfRUhDSV9HRU5F
UklDPXkKK0NPTkZJR19VU0JfSE9TVF9FVEhFUj15CitDT05GSUdfVVNCX0VUSEVSX0FTSVg9eQor
Q09ORklHX1VTQl9FVEhFUl9BU0lYODgxNzk9eQorQ09ORklHX1VTQl9FVEhFUl9NQ1M3ODMwPXkK
K0NPTkZJR19VU0JfRVRIRVJfUlRMODE1Mj15CitDT05GSUdfVVNCX0VUSEVSX1NNU0M5NVhYPXkK
K0NPTkZJR19VU0VfVElOWV9QUklOVEY9eQorQ09ORklHX0VSUk5PX1NUUj15Ci0tIAoyLjE4LjAu
MzIxLmdmZmM2ZmEwZTMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
