Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA281DE15F
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 09:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+K1/BjPUbpcG9NkrRFo1y/gUly+WOSCTti3UmpdWltg=; b=Fd/Q1bBAEU5o97
	npGyW3XVYb7E/sD9ki1fjMl4nNRmCkWO6A6QJyWO8yNUFXcwrGpzeQrAIcNWqoxxaCGMVT47Dftr5
	tZm6daJ/4oCd/YBZcuQdl4t/zA9LlAFFDT/M08Q2mseUBMzuOEd5ADnsBCdH9NgdpjJ9suE816lmK
	INSGTAhXYQWhw/aFLoHKX4HYnTFw89NQ3HA3fr5bQJx/wWyAPL70vigtLNbD31+J1Nxr5dF0ohe+q
	PNR7FDr52SAlwL/s7i59lBDXRu98uQHv5EA1Jfssso8ZO82eZ2ZEvDpu2+Ua9/d/yPc8znHJiX2UA
	j/KJaXQKBPPH4aGUECdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2XO-0000kq-Vw; Fri, 22 May 2020 07:56:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2XK-0000iU-LN
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 07:56:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 443A22A3537
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4 1/5] media: mc-entity.c: add media_graph_walk_next_stream()
Date: Fri, 22 May 2020 09:55:18 +0200
Message-Id: <20200522075522.6190-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_005610_827908_3E5B266E 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: niklas.soderlund@ragnatech.se--annotate, mchehab@kernel.org,
 dafna.hirschfeld@collabora.com, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com,
 skhan@linuxfoundation.org, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RnJvbTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+CgpBZGQgbWVkaWFf
Z3JhcGhfd2Fsa19uZXh0X3N0cmVhbSgpIGZ1bmN0aW9uIHRvIGZvbGxvdyBsaW5rcyBvbmx5IGZy
b20Kc2luayB0byBzb3VyY2UgKG5vdCB0aGUgb3Bwb3NpdGUpIHRvIGFsbG93IGl0ZXJhdGlvbiBv
bmx5IHRocm91Z2ggdGhlCmVudGl0aWVzIHBhcnRpY2lwYXRpbmcgaW4gYSBnaXZlbiBzdHJlYW0u
CgpUaGlzIGlzIHVzZWZ1bCB0byBhbGxvdyBjYWxsaW5nIC5zX3N0cmVhbSgpIGNhbGxiYWNrIG9u
bHkgaW4gdGhlCnN1YmRldmljZXMgdGhhdCByZXF1aXJlcyB0byBiZSBlbmFibGVkL2Rpc2FibGVk
LCBhbmQgYXZvaWQgY2FsbGluZyB0aGlzCmNhbGxiYWNrIHdoZW4gbm90IHJlcXVpcmVkLgoKU2ln
bmVkLW9mZi1ieTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+ClJldmll
d2VkLWJ5OiBOaWtsYXMgU8O2ZGVybHVuZCA8bmlrbGFzLnNvZGVybHVuZCtyZW5lc2FzQHJhZ25h
dGVjaC5zZT4KW0RhZm5hOiBmaXhpbmcgY29kaW5nIHN0eWxlIGlzc3Vlc10KU2lnbmVkLW9mZi1i
eTogRGFmbmEgSGlyc2NoZmVsZCA8ZGFmbmEuaGlyc2NoZmVsZEBjb2xsYWJvcmEuY29tPgotLS0K
IGRyaXZlcnMvbWVkaWEvbWMvbWMtZW50aXR5LmMgfCAzNCArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tCiBpbmNsdWRlL21lZGlhL21lZGlhLWVudGl0eS5oIHwgMTUgKysrKysrKysr
KysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9tYy9tYy1lbnRpdHkuYyBiL2RyaXZlcnMvbWVk
aWEvbWMvbWMtZW50aXR5LmMKaW5kZXggMTJiNDVlNjY5YmNjLi41NTVmOWRkOWY3ZjIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbWVkaWEvbWMvbWMtZW50aXR5LmMKKysrIGIvZHJpdmVycy9tZWRpYS9t
Yy9tYy1lbnRpdHkuYwpAQCAtMjI4LDYgKzIyOCwxMSBAQCBFWFBPUlRfU1lNQk9MX0dQTChtZWRp
YV9lbnRpdHlfcGFkc19pbml0KTsKICAqIEdyYXBoIHRyYXZlcnNhbAogICovCiAKK2VudW0gbWVk
aWFfZ3JhcGhfd2Fsa190eXBlIHsKKwlNRURJQV9HUkFQSF9XQUxLX0NPTk5FQ1RFRF9OT0RFUywK
KwlNRURJQV9HUkFQSF9XQUxLX1NUUkVBTV9OT0RFUywKK307CisKIHN0YXRpYyBzdHJ1Y3QgbWVk
aWFfZW50aXR5ICoKIG1lZGlhX2VudGl0eV9vdGhlcihzdHJ1Y3QgbWVkaWFfZW50aXR5ICplbnRp
dHksIHN0cnVjdCBtZWRpYV9saW5rICpsaW5rKQogewpAQCAtMzA1LDcgKzMxMCw4IEBAIHZvaWQg
bWVkaWFfZ3JhcGhfd2Fsa19zdGFydChzdHJ1Y3QgbWVkaWFfZ3JhcGggKmdyYXBoLAogfQogRVhQ
T1JUX1NZTUJPTF9HUEwobWVkaWFfZ3JhcGhfd2Fsa19zdGFydCk7CiAKLXN0YXRpYyB2b2lkIG1l
ZGlhX2dyYXBoX3dhbGtfaXRlcihzdHJ1Y3QgbWVkaWFfZ3JhcGggKmdyYXBoKQorc3RhdGljIHZv
aWQgbWVkaWFfZ3JhcGhfd2Fsa19pdGVyKHN0cnVjdCBtZWRpYV9ncmFwaCAqZ3JhcGgsCisJCQkJ
ICBlbnVtIG1lZGlhX2dyYXBoX3dhbGtfdHlwZSB0eXBlKQogewogCXN0cnVjdCBtZWRpYV9lbnRp
dHkgKmVudGl0eSA9IHN0YWNrX3RvcChncmFwaCk7CiAJc3RydWN0IG1lZGlhX2xpbmsgKmxpbms7
CkBAIC0zMjYsNiArMzMyLDE1IEBAIHN0YXRpYyB2b2lkIG1lZGlhX2dyYXBoX3dhbGtfaXRlcihz
dHJ1Y3QgbWVkaWFfZ3JhcGggKmdyYXBoKQogCS8qIEdldCB0aGUgZW50aXR5IGluIHRoZSBvdGhl
ciBlbmQgb2YgdGhlIGxpbmsgLiAqLwogCW5leHQgPSBtZWRpYV9lbnRpdHlfb3RoZXIoZW50aXR5
LCBsaW5rKTsKIAorCWlmICh0eXBlID09IE1FRElBX0dSQVBIX1dBTEtfU1RSRUFNX05PREVTICYm
CisJICAgIG5leHQgPT0gbGluay0+c2luay0+ZW50aXR5KSB7CisJCWxpbmtfdG9wKGdyYXBoKSA9
IGxpbmtfdG9wKGdyYXBoKS0+bmV4dDsKKwkJZGV2X2RiZyhlbnRpdHktPmdyYXBoX29iai5tZGV2
LT5kZXYsCisJCQkid2Fsazogc2tpcHBpbmcgJyVzJyAob3V0c2lkZSBvZiB0aGUgc3RyZWFtIHBh
dGgpXG4iLAorCQkJbGluay0+c2luay0+ZW50aXR5LT5uYW1lKTsKKwkJcmV0dXJuOworCX0KKwog
CS8qIEhhcyB0aGUgZW50aXR5IGFscmVhZHkgYmVlbiB2aXNpdGVkPyAqLwogCWlmIChtZWRpYV9l
bnRpdHlfZW51bV90ZXN0X2FuZF9zZXQoJmdyYXBoLT5lbnRfZW51bSwgbmV4dCkpIHsKIAkJbGlu
a190b3AoZ3JhcGgpID0gbGlua190b3AoZ3JhcGgpLT5uZXh0OwpAQCAtMzQyLDcgKzM1Nyw5IEBA
IHN0YXRpYyB2b2lkIG1lZGlhX2dyYXBoX3dhbGtfaXRlcihzdHJ1Y3QgbWVkaWFfZ3JhcGggKmdy
YXBoKQogCQluZXh0LT5uYW1lKTsKIH0KIAotc3RydWN0IG1lZGlhX2VudGl0eSAqbWVkaWFfZ3Jh
cGhfd2Fsa19uZXh0KHN0cnVjdCBtZWRpYV9ncmFwaCAqZ3JhcGgpCitzdGF0aWMgc3RydWN0IG1l
ZGlhX2VudGl0eSAqCitfX21lZGlhX2dyYXBoX3dhbGtfbmV4dChzdHJ1Y3QgbWVkaWFfZ3JhcGgg
KmdyYXBoLAorCQkJZW51bSBtZWRpYV9ncmFwaF93YWxrX3R5cGUgdHlwZSkKIHsKIAlzdHJ1Y3Qg
bWVkaWFfZW50aXR5ICplbnRpdHk7CiAKQEAgLTM1NSw3ICszNzIsNyBAQCBzdHJ1Y3QgbWVkaWFf
ZW50aXR5ICptZWRpYV9ncmFwaF93YWxrX25leHQoc3RydWN0IG1lZGlhX2dyYXBoICpncmFwaCkK
IAkgKiBmb3VuZC4KIAkgKi8KIAl3aGlsZSAobGlua190b3AoZ3JhcGgpICE9ICZzdGFja190b3Ao
Z3JhcGgpLT5saW5rcykKLQkJbWVkaWFfZ3JhcGhfd2Fsa19pdGVyKGdyYXBoKTsKKwkJbWVkaWFf
Z3JhcGhfd2Fsa19pdGVyKGdyYXBoLCB0eXBlKTsKIAogCWVudGl0eSA9IHN0YWNrX3BvcChncmFw
aCk7CiAJZGV2X2RiZyhlbnRpdHktPmdyYXBoX29iai5tZGV2LT5kZXYsCkBAIC0zNjMsOCArMzgw
LDE5IEBAIHN0cnVjdCBtZWRpYV9lbnRpdHkgKm1lZGlhX2dyYXBoX3dhbGtfbmV4dChzdHJ1Y3Qg
bWVkaWFfZ3JhcGggKmdyYXBoKQogCiAJcmV0dXJuIGVudGl0eTsKIH0KKworc3RydWN0IG1lZGlh
X2VudGl0eSAqbWVkaWFfZ3JhcGhfd2Fsa19uZXh0KHN0cnVjdCBtZWRpYV9ncmFwaCAqZ3JhcGgp
Cit7CisJcmV0dXJuIF9fbWVkaWFfZ3JhcGhfd2Fsa19uZXh0KGdyYXBoLCBNRURJQV9HUkFQSF9X
QUxLX0NPTk5FQ1RFRF9OT0RFUyk7Cit9CiBFWFBPUlRfU1lNQk9MX0dQTChtZWRpYV9ncmFwaF93
YWxrX25leHQpOwogCitzdHJ1Y3QgbWVkaWFfZW50aXR5ICptZWRpYV9ncmFwaF93YWxrX25leHRf
c3RyZWFtKHN0cnVjdCBtZWRpYV9ncmFwaCAqZ3JhcGgpCit7CisJcmV0dXJuIF9fbWVkaWFfZ3Jh
cGhfd2Fsa19uZXh0KGdyYXBoLCBNRURJQV9HUkFQSF9XQUxLX1NUUkVBTV9OT0RFUyk7Cit9CitF
WFBPUlRfU1lNQk9MX0dQTChtZWRpYV9ncmFwaF93YWxrX25leHRfc3RyZWFtKTsKKwogaW50IG1l
ZGlhX2VudGl0eV9nZXRfZndub2RlX3BhZChzdHJ1Y3QgbWVkaWFfZW50aXR5ICplbnRpdHksCiAJ
CQkJc3RydWN0IGZ3bm9kZV9oYW5kbGUgKmZ3bm9kZSwKIAkJCQl1bnNpZ25lZCBsb25nIGRpcmVj
dGlvbl9mbGFncykKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvbWVkaWEtZW50aXR5LmggYi9p
bmNsdWRlL21lZGlhL21lZGlhLWVudGl0eS5oCmluZGV4IGNkZTgwYWQwMjliNy4uOTAzNWEzNmU5
NDQyIDEwMDY0NAotLS0gYS9pbmNsdWRlL21lZGlhL21lZGlhLWVudGl0eS5oCisrKyBiL2luY2x1
ZGUvbWVkaWEvbWVkaWEtZW50aXR5LmgKQEAgLTkyOCw2ICs5MjgsMjEgQEAgdm9pZCBtZWRpYV9n
cmFwaF93YWxrX3N0YXJ0KHN0cnVjdCBtZWRpYV9ncmFwaCAqZ3JhcGgsCiAgKi8KIHN0cnVjdCBt
ZWRpYV9lbnRpdHkgKm1lZGlhX2dyYXBoX3dhbGtfbmV4dChzdHJ1Y3QgbWVkaWFfZ3JhcGggKmdy
YXBoKTsKIAorLyoqCisgKiBtZWRpYV9ncmFwaF93YWxrX25leHRfc3RyZWFtIC0gR2V0IHRoZSBu
ZXh0IGVudGl0eSBpbiB0aGUgZ3JhcGgKKyAqIEBncmFwaDogTWVkaWEgZ3JhcGggc3RydWN0dXJl
CisgKgorICogUGVyZm9ybSBhIGRlcHRoLWZpcnN0IHRyYXZlcnNhbCBvZiB0aGUgZ2l2ZW4gbWVk
aWEgZW50aXRpZXMgZ3JhcGggb25seQorICogZm9sbG93aW5nIGxpbmtzIGZyb20gc2luayB0byBz
b3VyY2UgKGFuZCBub3QgdGhlIG9wcG9zaXRlKS4KKyAqCisgKiBUaGUgZ3JhcGggc3RydWN0dXJl
IG11c3QgaGF2ZSBiZWVuIHByZXZpb3VzbHkgaW5pdGlhbGl6ZWQgd2l0aCBhIGNhbGwgdG8KKyAq
IG1lZGlhX2dyYXBoX3dhbGtfc3RhcnQoKS4KKyAqCisgKiBSZXR1cm46IHJldHVybnMgdGhlIG5l
eHQgZW50aXR5IGluIHRoZSBncmFwaCBpbiB0aGUgc3RyZWFtIHBhdGgKKyAqIG9yICVOVUxMIGlm
IHRoZSB3aG9sZSBzdHJlYW0gcGF0aCBoYXZlIGJlZW4gdHJhdmVyc2VkLgorICovCitzdHJ1Y3Qg
bWVkaWFfZW50aXR5ICptZWRpYV9ncmFwaF93YWxrX25leHRfc3RyZWFtKHN0cnVjdCBtZWRpYV9n
cmFwaCAqZ3JhcGgpOworCiAvKioKICAqIG1lZGlhX3BpcGVsaW5lX3N0YXJ0IC0gTWFyayBhIHBp
cGVsaW5lIGFzIHN0cmVhbWluZwogICogQGVudGl0eTogU3RhcnRpbmcgZW50aXR5Ci0tIAoyLjE3
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
