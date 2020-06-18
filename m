Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EC01FF8AF
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 18:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCBJvJos+2eR5acqyO2Gxe4x6cGGxK6SjoDqU3FAyeg=; b=Ek7p2Zi6kfin15
	FLgQuxR9vmVFtyE0jGlRl+MGs9MP2ZV94taSCxq0CLuXgAELFOw6IIGw1Etu/chvAEInh92Gv4NgG
	5xmXRJrXnWsAGWJSTf+9R1aRlOSACa9oZDt6vLZdhl0ECCW4CT6BfQ0ApOvTuhBAeRO4J0ni0QQtt
	X8th1UpxVjc4rf2YN7gIbbi7iOBVAh25BBa8GwUje59TuJ1/o1NTLypxiO8VN7PBe8oMchtlw+c/L
	K950lFWIErmkIsfH63Q2IZMbbTVuCBc6JCRWtmGYZTpZNEXBlGCG8qp5qZbaYLHSMAbF2WIc9AKPN
	xSItihZqljIqEbBYVs4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx5K-0000O6-RF; Thu, 18 Jun 2020 16:08:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx5I-0000Me-81
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 16:08:13 +0000
Received: by mail-pl1-x642.google.com with SMTP id n9so2629623plk.1
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 09:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UJ44Kh57FeMHUsvOOPAvMrXRvlmf36r3Ig6kWg0HNps=;
 b=dBUjzQQ0MAqA+ytZdRDC1SS8v41DyrYhcpdsWfPTJPaSHAncoccxYLipM0t/GTrzzC
 L/w7TqgLN5xv47SwhKcsinRuvsi3t7LJSJi/mAxOR80eM42AH3h11LR+0Zjjv7Ll8swy
 MTI50Z7rPTkCZ66RYApEuZpLZcXPS/tAbvrL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UJ44Kh57FeMHUsvOOPAvMrXRvlmf36r3Ig6kWg0HNps=;
 b=tKaNRwnBn5p1YlLLqm/80++tVo3EEVZfcdp+P4Jszjp1iBCDO2cf/bhxt3SeaQ1pux
 tvXktY5Kn7DMOkvQiGVYtDgZywT7JkhSajOKBZEI1U00BOPCK0zNMyYygeYuRblxqt6B
 D0YnSOTvJxbrbTqKJEVNqVQuKPqoEC8lPPBSidvLvokomfqF+dnlp11sPVlvauEemuG5
 j0klZTv8N/g0lumWMDpSYCvoIlJQ+HOi4v0b6TA8eSnFgy4GH76q5PzgHU6nNKAD5fdD
 qvMFZPKdF0seA4yTobYz4jv/Dkb6MXOGW/yFUOLRX9o63njHcKTKPPuBJfR5+B896JBT
 uYIg==
X-Gm-Message-State: AOAM5312JayCaERCXCwICgE9UjlsR6mZ5GcqNtGopPMvL2hOCLNlAU3L
 M7fPrE/A+zUyaV7erhQr/eP6eQ==
X-Google-Smtp-Source: ABdhPJzmCr4Y8i7mBlMJ0jZTr52HYD8Q9vPJ87v0KcCfBHZdm2xaxrTAByb85M4vduBjvWl5SoEbZw==
X-Received: by 2002:a17:90b:2308:: with SMTP id
 mt8mr4896758pjb.211.1592496491737; 
 Thu, 18 Jun 2020 09:08:11 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id u4sm3264943pfl.102.2020.06.18.09.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:08:11 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 4/5] rockchip: Separate the reset cause from display cpuinfo
Date: Thu, 18 Jun 2020 21:09:47 +0530
Message-Id: <20200618153948.218506-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618153948.218506-1-jagan@amarulasolutions.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_090812_285369_B7DE60D1 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

cmVzZXQgY2F1c2UgaXMgYSBnZW5lcmljIGZ1bmN0aW9uYWxpdHkgYmFzZWQgb24gdGhlIHNvYwpj
cnUgcmVnaXN0ZXJzIGluIHJvY2tjaGlwLiBUaGlzIGNhbiBiZSB1c2VkIGZvciBwcmludGluZwp0
aGUgY2F1c2Ugb2YgcmVzZXQgaW4gY3B1aW5mbyBvciBzb21lIG90aGVyIHBsYWNlIHdoZXJlCnJl
c2V0IGNhdXNlIGlzIG5lZWRlZC7CoAoKT3RoZXIgdGhhbiBjcHVpbmZvLCByZXNldCBjYXVzZSBj
YW4gYWxzbyBiZSB1c2luZyBkdXJpbmcKYm9vdGNvdW50IGZvciBjaGVja2luZyB0aGUgc3BlY2lm
aWMgcmVzZXQgY2F1c2UgYW5kIGdsb3cKdGhlIGxlZCBiYXNlZCBvbiB0aGUgcmVzZXQgY2F1c2Uu
CgpTbywgbGV0J3Mgc2VwYXJhdGUgdGhlIHJlc2V0IGNhdXNlIGNvZGUgZnJvbSBjcHVpbmZvLCBh
bmQKYWRkIGEgY2hlY2sgdG8gYnVpbGQgaXQgZm9yIHJrMzM5OSwgcmszMjg4IHNpbmNlIHRoZXNl
IHR3bwpzb2MgYXJlIHN1cHBvcnRpbmcgcmVzZXQgY2F1c2UgYXMgb2Ygbm93LgoKU2lnbmVkLW9m
Zi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+ClRlc3RlZC1ieTog
U3VuaWVsIE1haGVzaCA8c3VuaWxAYW1hcnVsYXNvbHV0aW9ucy5jb20+Ci0tLQpDaGFuZ2VzIGZv
ciB2NDoKLSBub25lCgogYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9jcnUuaCB8
ICAyICsrCiBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL01ha2VmaWxlICAgICAgICAgIHwgIDUgKysr
Ky0KIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvY3B1LWluZm8uYyAgICAgICAgfCAyMCArKysrKysr
KysrKystLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA5IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAv
Y3J1LmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL2NydS5oCmluZGV4IDVl
YjE3ZjlkNTUuLjMxN2ViNjEwNDkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2Fy
Y2gtcm9ja2NoaXAvY3J1LmgKKysrIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hp
cC9jcnUuaApAQCAtMzEsNCArMzEsNiBAQCBlbnVtIHsKIAogI2RlZmluZSBNSHoJCTEwMDAwMDAK
IAorY2hhciAqZ2V0X3Jlc2V0X2NhdXNlKHZvaWQpOworCiAjZW5kaWYgLyogX1JPQ0tDSElQX0NM
T0NLX0ggKi8KZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvTWFrZWZpbGUgYi9h
cmNoL2FybS9tYWNoLXJvY2tjaGlwL01ha2VmaWxlCmluZGV4IDViMzg1MjZmZTAuLmVmNDg5OGUw
MGMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvTWFrZWZpbGUKKysrIGIvYXJj
aC9hcm0vbWFjaC1yb2NrY2hpcC9NYWtlZmlsZQpAQCAtMTUsNiArMTUsMTAgQEAgb2JqLXRwbC0k
KENPTkZJR19ST0NLQ0hJUF9QWDMwKSArPSBweDMwLWJvYXJkLXRwbC5vCiAKIG9iai1zcGwtJChD
T05GSUdfUk9DS0NISVBfUkszMDM2KSArPSByazMwMzYtYm9hcmQtc3BsLm8KIAoraWZlcSAoJChD
T05GSUdfUk9DS0NISVBfUkszMjg4KSQoQ09ORklHX1JPQ0tDSElQX1JLMzM5OSksIHkpCitvYmot
eSArPSBjcHUtaW5mby5vCitlbmRpZgorCiBpZmVxICgkKENPTkZJR19TUExfQlVJTEQpJChDT05G
SUdfVFBMX0JVSUxEKSwpCiAKICMgQWx3YXlzIGluY2x1ZGUgYm9vdF9tb2RlLm8sIGFzIHdlIGJ5
cGFzcyBpdCAoaS5lLiB0dXJuIGl0IG9mZikKQEAgLTIyLDcgKzI2LDYgQEAgaWZlcSAoJChDT05G
SUdfU1BMX0JVSUxEKSQoQ09ORklHX1RQTF9CVUlMRCksKQogIyB3ZSBjYW4gaGF2ZSB0aGUgcHJl
cHJvY2Vzc29yIGNvcnJlY3RseSByZWNvZ25pc2UgYm90aCAweDAgYW5kIDAKICMgbWVhbmluZyAi
dHVybiBpdCBvZmYiLgogb2JqLXkgKz0gYm9vdF9tb2RlLm8KLW9iai0kKENPTkZJR19ESVNQTEFZ
X0NQVUlORk8pICs9IGNwdS1pbmZvLm8KIG9iai0kKENPTkZJR19ST0NLQ0hJUF9DT01NT05fQk9B
UkQpICs9IGJvYXJkLm8KIG9iai0kKENPTkZJR19NSVNDX0lOSVRfUikgKz0gbWlzYy5vCiBlbmRp
ZgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9jcHUtaW5mby5jIGIvYXJjaC9h
cm0vbWFjaC1yb2NrY2hpcC9jcHUtaW5mby5jCmluZGV4IDIxY2E5ZGVkY2UuLjc2YTg0MGUyYzMg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvY3B1LWluZm8uYworKysgYi9hcmNo
L2FybS9tYWNoLXJvY2tjaGlwL2NwdS1pbmZvLmMKQEAgLTEzLDcgKzEzLDcgQEAKICNpbmNsdWRl
IDxhc20vYXJjaC1yb2NrY2hpcC9oYXJkd2FyZS5oPgogI2luY2x1ZGUgPGxpbnV4L2Vyci5oPgog
Ci1zdGF0aWMgY2hhciAqZ2V0X3Jlc2V0X2NhdXNlKHZvaWQpCitjaGFyICpnZXRfcmVzZXRfY2F1
c2Uodm9pZCkKIHsKIAlzdHJ1Y3Qgcm9ja2NoaXBfY3J1ICpjcnUgPSByb2NrY2hpcF9nZXRfY3J1
KCk7CiAJY2hhciAqY2F1c2UgPSBOVUxMOwpAQCAtNDEsMTIgKzQxLDYgQEAgc3RhdGljIGNoYXIg
KmdldF9yZXNldF9jYXVzZSh2b2lkKQogCQljYXVzZSA9ICJ1bmtub3duIHJlc2V0IjsKIAl9CiAK
LQkvKioKLQkgKiByZXNldF9yZWFzb24gZW52IGlzIHVzZWQgYnkgcmszMjg4LCBkdWUgdG8gc3Bl
Y2lhbCB1c2UgY2FzZQotCSAqIHRvIGZpZ3VyZSBpdCB0aGUgYm9vdCBiZWhhdmlvci4gc28ga2Vl
cCB0aGlzIGFzIGl0IGlzLgotCSAqLwotCWVudl9zZXQoInJlc2V0X3JlYXNvbiIsIGNhdXNlKTsK
LQogCS8qCiAJICogQ2xlYXIgZ2xiX3JzdF9zdCwgc28gd2UgY2FuIGRldGVybWluZSB0aGUgbGFz
dCByZXNldCBjYXVzZQogCSAqIGZvciBmb2xsb3dpbmcgcmVzZXRzLgpAQCAtNTYsMTIgKzUwLDIy
IEBAIHN0YXRpYyBjaGFyICpnZXRfcmVzZXRfY2F1c2Uodm9pZCkKIAlyZXR1cm4gY2F1c2U7CiB9
CiAKKyNpZmRlZiBDT05GSUdfRElTUExBWV9DUFVJTkZPCiBpbnQgcHJpbnRfY3B1aW5mbyh2b2lk
KQogeworCWNoYXIgKmNhdXNlID0gZ2V0X3Jlc2V0X2NhdXNlKCk7CisKIAlwcmludGYoIlNvQzog
Um9ja2NoaXAgJXNcbiIsIENPTkZJR19TWVNfU09DKTsKLQlwcmludGYoIlJlc2V0IGNhdXNlOiAl
c1xuIiwgZ2V0X3Jlc2V0X2NhdXNlKCkpOworCXByaW50ZigiUmVzZXQgY2F1c2U6ICVzXG4iLCBj
YXVzZSk7CisKKwkvKioKKwkgKiByZXNldF9yZWFzb24gZW52IGlzIHVzZWQgYnkgcmszMjg4LCBk
dWUgdG8gc3BlY2lhbCB1c2UgY2FzZQorCSAqIHRvIGZpZ3VyZSBpdCB0aGUgYm9vdCBiZWhhdmlv
ci4gc28ga2VlcCB0aGlzIGFzIGl0IGlzLgorCSAqLworCWVudl9zZXQoInJlc2V0X3JlYXNvbiIs
IGNhdXNlKTsKIAogCS8qIFRPRE8gcHJpbnQgb3BlcmF0aW5nIHRlbXBhcmF0dXJlIGFuZCBjbG9j
ayAqLwogCiAJcmV0dXJuIDA7CiB9CisjZW5kaWYKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
