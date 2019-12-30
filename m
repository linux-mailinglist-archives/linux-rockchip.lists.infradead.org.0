Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441C712CDAB
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:28:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDxT5my91yOrSIThO/7s4O/uvFdQxFimnA5A7L9s7FY=; b=taHEF/OL+gA2So
	912Yzn2cHePOlVRZcnSpzwTV/XD5geH2V1c4JIC3OW5+AhYR9FfH+umD2cwSxxeSNilwvj/np4ZWJ
	9cAZ34KNmXGMoorflaZIsYEfeBBXGRVjFBC3DBfF0IORqC0g0NLFx7SGb+lz+zAnKHB1qn+oC0L8D
	aD/wwQRyz34IT+CVzHYND1GRgOVx+yzhQ/tjKJk86I12vhYFZoeO9BiIcngtfxP7MbimREcL5fD5a
	MyhY2uDyZPxHtsiBOqbXqt+F0mhpJSiZNDgHzT8Up+UHwHPvu2wpd5rDxzwKuxYeXL7g+1182jDv6
	Rc8yDhh6d26stQ8/TKWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqQ2-0006XA-4m; Mon, 30 Dec 2019 08:28:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqPu-0006SZ-Lf
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:28:48 +0000
Received: by mail-pf1-x442.google.com with SMTP id x184so17919371pfb.3
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 00:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t68vP3zUnxKiomoAY67bH1HGMmANs3QjoEQpZMhCEPQ=;
 b=YoHWYDgBRZ08dadZNvqDnSHsd7yp0Ye2eSU2ERFpjUpJi8vK42eW8Ph1WOZM9QMAHu
 1nEjz2Bm/dpxlCaaOcJ6eFuOHMJjS4WDtug0n9GXEzGNIdAcQQsSCNsAXAAuLw+hyTi2
 8m24De9EOQoWVwuy3l7FmAKGj+VNptLE/45l4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t68vP3zUnxKiomoAY67bH1HGMmANs3QjoEQpZMhCEPQ=;
 b=g0T5UO0EzNfTLc3wKlO+/bYLQ0s3KmBCrtvosRLsmYQVdLK25hFThxDuV5ULXB+56l
 wJMNXX4vKhuIVyqM5c1RIdyZuwVSoiZGbVHKk9/fDjG6ihSQRBWFQAkiEp0AN5xh2G2J
 sEhKjP4o00o87I7p6hm9w874aHVlRAk0zqXVbHp3c4iUzrq+OUK+tyQJzeCvFL34YKBv
 BP+rJJ3/Lck8nWGI+5y3Qori6CjCIIAdepg4ZR/qBWvnKkRLn6bD2jclWW079Km4o6yZ
 lSVcgTuUrZxDpdiex/29zsmdmYj3qbUODe75hNJsDaZBZSP3l50921lpF+rX/o6hejhe
 RvwQ==
X-Gm-Message-State: APjAAAV9En2IlpGL0fZhDpjOFXYsiXJ53PCnYYmiZFCUjyHUoEmweQlD
 l96o38ZccnPtmuki1N5D9FpWfw==
X-Google-Smtp-Source: APXvYqy6fioDAK3JH8EV4MhnDOaRFf4RdxX99O+bck2i+Nik+nITrcZ27iZoZIfySRqnqvH6REcXjg==
X-Received: by 2002:a63:447:: with SMTP id 68mr72595709pge.364.1577694525840; 
 Mon, 30 Dec 2019 00:28:45 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id s1sm46240652pgv.87.2019.12.30.00.28.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 00:28:45 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v5 6/7] rockchip: Add Single boot image (with binman, pad_cat)
Date: Mon, 30 Dec 2019 13:58:18 +0530
Message-Id: <20191230082819.30191-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191230082819.30191-1-jagan@amarulasolutions.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002846_765786_02E3F6A6 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

QWxsIHJvY2tjaGlwIHBsYXRmb3JtcyBzdXBwb3J0IFRQTCBvciBTUEwtYmFzZWQgYm9vdGxvYWRl
cgppbiBtYWlubGluZSB3aXRoIFUtQm9vdCBwcm9wZXIgYXMgZmluYWwgc3RhZ2UuIEZvciBlYWNo
CnN0YWdlIHdlIG5lZWQgdG8gYnVybiB0aGUgaW1hZ2Ugb24gdG8gZmxhc2ggd2l0aCByZXNwZWN0
aXZlCm9mZnNldHMuCgpUaGlzIHBhdGNoIGNyZWF0ZXMgYSBzaW5nbGUgYm9vdCBpbWFnZSBjb21w
b25lbnQgdXNpbmcKLSBiaW5tYW4sIGZvciBhcm0zMiByb2NrY2hpcCBwbGF0Zm9ybXMKLSBwYWRf
Y2F0LCBmb3IgYXJtNjQgcm9ja2NoaXAgcGxhdGZvcm1zLgoKVGhpcyB3b3VsZCBoZWxwIHVzZXJz
IHRvIGdldCByaWQgb2YgYnVybmluZyBkaWZmZXJlbnQKYm9vdCBzdGFnZSBpbWFnZXMuCgpUaGUg
bmV3IGltYWdlIGNhbGxlZCAndS1ib290LXJvY2tjaGlwLmJpbicKd2hpY2ggY2FuIGJ1cm4gaW50
byBmbGFzaCBsaWtlOgoK4oK5IHN1ZG8gZGQgaWY9dS1ib290LXJvY2tjaGlwLmJpbiBvZj0vZGV2
L3NkYSBzZWVrPTY0CgpUaGlzIHdvdWxkIHN1cHBvcnQgYWxsIHJvY2tjaGlwIHBsYXRmb3Jtcywg
ZXhjZXB0IHJrMzEyOApzaW5jZSBpdCBkb2Vzbid0IHN1cHBvcnQgZm9yIFNQTCB5ZXQuCgpDYzog
S2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KQ2M6IE1hdHdleSBWLiBLb3Ju
aWxvdiA8bWF0d2V5Lmtvcm5pbG92QGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVr
aSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+ClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxr
ZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgotLS0KIE1ha2VmaWxlICAgICAgICAgICAgICAgICAg
ICAgICAgICB8IDE4ICsrKysrKysrKysrKysrLS0tLQogYXJjaC9hcm0vS2NvbmZpZyAgICAgICAg
ICAgICAgICAgIHwgIDEgKwogYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaSAgIHwgIDIg
KysKIGFyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kgICB8ICAyICsrCiBhcmNoL2FybS9k
dHMvcm9ja2NoaXAtdS1ib290LmR0c2kgfCAyMSArKysrKysrKysrKysrKysrKysrKysKIGluY2x1
ZGUvY29uZmlncy9yb2NrY2hpcC1jb21tb24uaCB8ICAyICsrCiA2IGZpbGVzIGNoYW5nZWQsIDQy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCgpkaWZmIC0tZ2l0IGEvTWFrZWZpbGUgYi9NYWtl
ZmlsZQppbmRleCBiNDg2OTNlNTYwLi5kNWI2YzQ1Yzg5IDEwMDY0NAotLS0gYS9NYWtlZmlsZQor
KysgYi9NYWtlZmlsZQpAQCAtOTA5LDcgKzkwOSw3IEBAIEFMTC15ICs9IHUtYm9vdC13aXRoLWR0
Yi5iaW4KIGVuZGlmCiAKIGlmZXEgKCQoQ09ORklHX0FSQ0hfUk9DS0NISVApJChDT05GSUdfU1BM
KSx5eSkKLUFMTC15ICs9IHUtYm9vdC1zcGwtcm9ja2NoaXAuYmluCitBTEwteSArPSB1LWJvb3Qt
cm9ja2NoaXAuYmluCiBlbmRpZgogCiBMREZMQUdTX3UtYm9vdCArPSAkKExERkxBR1NfRklOQUwp
CkBAIC0xMzg3LDE1ICsxMzg3LDI1IEBAIGlmZXEgKCQoQ09ORklHX1NQTCkkKENPTkZJR19UUEwp
LHl5KQogTUtJTUFHRUZMQUdTX3UtYm9vdC10cGwtcm9ja2NoaXAuYmluID0gLW4gJChDT05GSUdf
U1lTX1NPQykgLVQgJChST0NLQ0hJUF9JTUdfVFlQRSkKIHRwbC91LWJvb3QtdHBsLXJvY2tjaGlw
LmJpbjogdHBsL3UtYm9vdC10cGwuYmluIEZPUkNFCiAJJChjYWxsIGlmX2NoYW5nZWQsbWtpbWFn
ZSkKLXUtYm9vdC1zcGwtcm9ja2NoaXAuYmluOiB0cGwvdS1ib290LXRwbC1yb2NrY2hpcC5iaW4g
c3BsL3UtYm9vdC1zcGwuYmluIEZPUkNFCitzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5iaW46IHRw
bC91LWJvb3QtdHBsLXJvY2tjaGlwLmJpbiBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UKIAkkKGNh
bGwgaWZfY2hhbmdlZCxjYXQpCiBlbHNlCiBNS0lNQUdFRkxBR1NfdS1ib290LXNwbC1yb2NrY2hp
cC5iaW4gPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCAkKFJPQ0tDSElQX0lNR19UWVBFKQotdS1i
b290LXNwbC1yb2NrY2hpcC5iaW46IHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQorc3BsL3UtYm9v
dC1zcGwtcm9ja2NoaXAuYmluOiBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UKIAkkKGNhbGwgaWZf
Y2hhbmdlZCxta2ltYWdlKQogZW5kaWYKIAotZW5kaWYKK2lmZXEgKCQoQ09ORklHX0FSTTY0KSwp
Cit1LWJvb3Qtcm9ja2NoaXAuYmluOiBzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5iaW4gdS1ib290
LmltZyBGT1JDRQorCSQoY2FsbCBpZl9jaGFuZ2VkLGJpbm1hbikKK2Vsc2UKK09CSkNPUFlGTEFH
U191LWJvb3Qtcm9ja2NoaXAuYmluID0gLUkgYmluYXJ5IC1PIGJpbmFyeSBcCisJLS1wYWQtdG89
JChDT05GSUdfU1BMX1BBRF9UTykgLS1nYXAtZmlsbD0weGZmCit1LWJvb3Qtcm9ja2NoaXAuYmlu
OiBzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5iaW4gdS1ib290Lml0YiBGT1JDRQorCSQoY2FsbCBp
Zl9jaGFuZ2VkLHBhZF9jYXQpCitlbmRpZiAjIENPTkZJR19BUk02NAorCitlbmRpZiAjIENPTkZJ
R19BUkNIX1JPQ0tDSElQCiAKIGlmZXEgKCQoQ09ORklHX0FSQ0hfTFBDMzJYWCkkKENPTkZJR19T
UEwpLHl5KQogTUtJTUFHRUZMQUdTX2xwYzMyeHgtc3BsLmltZyA9IC1UIGxwYzMyeHhpbWFnZSAt
YSAkKENPTkZJR19TUExfVEVYVF9CQVNFKQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vS2NvbmZpZyBi
L2FyY2gvYXJtL0tjb25maWcKaW5kZXggZjlkYWIwNzNlYS4uN2JkOTliYTNiYiAxMDA2NDQKLS0t
IGEvYXJjaC9hcm0vS2NvbmZpZworKysgYi9hcmNoL2FybS9LY29uZmlnCkBAIC0xNTkwLDYgKzE1
OTAsNyBAQCBjb25maWcgQVJDSF9TVE0zMk1QCiBjb25maWcgQVJDSF9ST0NLQ0hJUAogCWJvb2wg
IlN1cHBvcnQgUm9ja2NoaXAgU29DcyIKIAlzZWxlY3QgQkxLCisJc2VsZWN0IEJJTk1BTiBpZiAh
QVJNNjQKIAlzZWxlY3QgRE0KIAlzZWxlY3QgRE1fR1BJTwogCXNlbGVjdCBETV9JMkMKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2R0cy9yazMwMzYtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmsz
MDM2LXUtYm9vdC5kdHNpCmluZGV4IDFlN2QwNzkzMTUuLjQxYWMwNTRiODEgMTAwNjQ0Ci0tLSBh
L2FyY2gvYXJtL2R0cy9yazMwMzYtdS1ib290LmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL3JrMzAz
Ni11LWJvb3QuZHRzaQpAQCAtMiwzICsyLDUgQEAKIC8qCiAgKiBDb3B5cmlnaHQgKEMpIDIwMTkg
SmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CiAgKi8KKworI2luY2x1ZGUg
InJvY2tjaGlwLXUtYm9vdC5kdHNpIgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JrMzI4OC11
LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kKaW5kZXggM2YwMGEz
YjZkMy4uNmQzMTczNTM2MiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3Qu
ZHRzaQorKysgYi9hcmNoL2FybS9kdHMvcmszMjg4LXUtYm9vdC5kdHNpCkBAIC0zLDYgKzMsOCBA
QAogICogQ29weXJpZ2h0IChDKSAyMDE5IFJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkCiAg
Ki8KIAorI2luY2x1ZGUgInJvY2tjaGlwLXUtYm9vdC5kdHNpIgorCiAvIHsKIAljaG9zZW4gewog
CQl1LWJvb3Qsc3BsLWJvb3Qtb3JkZXIgPSBcCmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcm9j
a2NoaXAtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcm9ja2NoaXAtdS1ib290LmR0c2kKbmV3
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMC4uYmMwYjE0MTJhMgotLS0gL2Rldi9u
dWxsCisrKyBiL2FyY2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaQpAQCAtMCwwICsxLDIx
IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsKKy8qCisgKiBDb3B5cmln
aHQgKEMpIDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CisgKi8K
KworI2luY2x1ZGUgPGNvbmZpZy5oPgorCisvIHsKKwliaW5tYW4geworCQlmaWxlbmFtZSA9ICJ1
LWJvb3Qtcm9ja2NoaXAuYmluIjsKKwkJcGFkLWJ5dGUgPSA8MHhmZj47CisKKwkJYmxvYiB7CisJ
CQlmaWxlbmFtZSA9ICJzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5iaW4iOworCQl9OworCisJCXUt
Ym9vdC1pbWcgeworCQkJb2Zmc2V0ID0gPENPTkZJR19TUExfUEFEX1RPPjsKKwkJfTsKKwl9Owor
fTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvY29uZmlncy9yb2NrY2hpcC1jb21tb24uaCBiL2luY2x1
ZGUvY29uZmlncy9yb2NrY2hpcC1jb21tb24uaAppbmRleCA2OGUxMTA1YTRiLi5kN2Y1Y2E5ZmE0
IDEwMDY0NAotLS0gYS9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmgKKysrIGIvaW5j
bHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oCkBAIC05LDYgKzksOCBAQAogCiAjZGVmaW5l
IENPTkZJR19TWVNfTlMxNjU1MF9NRU0zMgogCisjZGVmaW5lIENPTkZJR19TUExfUEFEX1RPCQk4
MzU1ODQwCisKICNpZm5kZWYgQ09ORklHX1NQTF9CVUlMRAogCiAvKiBGaXJzdCB0cnkgdG8gYm9v
dCBmcm9tIFNEIChpbmRleCAwKSwgdGhlbiBlTU1DIChpbmRleCAxKSAqLwotLSAKMi4xOC4wLjMy
MS5nZmZjNmZhMGUzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
