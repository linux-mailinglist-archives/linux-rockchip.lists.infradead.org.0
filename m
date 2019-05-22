Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D09263B4
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 14:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlUmKIeGrzKO6Td6j4UX+Yhqs2l7BQmfa432iML51LA=; b=c2bqFnwLSlERLr
	18P6yeRAqSIaSBowiMkpipFnf230K1a3/cxqy1VUk0Cf/DssFHrlfdynBZwX2S8zSJL2tqaKwVI+8
	NPwSRm9TuSl7GN6808MQ6KjlF8CxfScD3uaUauSE+Zp1nzrJFkzTxukrd+liZNz1TdZI4Ku1k//In
	uJ8uu5ZSWR4HmR1SIHq6l6ihU36oZRQcNKi7TJ3uRS5odv2qbYqwDA0szI3qY6xivjq70zad47/Mq
	08MZCacdX9Xl7n2uZ+eHq9iqAruzH7RcXx62JT72D9V1XWNp82nZQiA5spyD1579Z33LQsi/0OGH6
	6p5IYgYGH5aBU7PL7aLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTQEy-0000qC-D5; Wed, 22 May 2019 12:21:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTQEo-0000hK-GJ
 for linux-rockchip@lists.infradead.org; Wed, 22 May 2019 12:20:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id d9so2077025wrx.0
 for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2019 05:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2ZhTk2acfpx8r4rFg+ynBi2h7n1lFX/B8oA8Vc1vWH4=;
 b=KlvSGTvJ/VQA3qnYedKHobnQk8JkvV/4dnosj/hXZhcKYODa8MUB36fNKdt5ac2m15
 /K5HRObcXkfT5oE73OIczs4h3yyFlnwNWpV0eIwpKeDQyqNXMBey1y4Kj+Gd6lt40yqb
 Sskay6gQq9Do8FehTN8k+XFjwK3e4xkSLOZfv6X1Ik0hV+S/+NsFuVkJ5LFlkBRO5qTR
 6W6Hd+nx6WMOg0TXQl/51Rtg5OgYxSjAWczXesMFFyA6BOmJ7gVGE5KvPLZTuTKX8atI
 lw7A8PWcrPsN0G44hYBUtjWhFlfUSGQcRZKWwQP/5SaHhD2FXApIP+I5Omxfs/VSxdcy
 UsTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2ZhTk2acfpx8r4rFg+ynBi2h7n1lFX/B8oA8Vc1vWH4=;
 b=ie508TKx72gOXJ+G6v0QaxJ3LenPo3HioHuCabdM5DfHzl+r8KbchRsUXnpfEtfs4F
 sq9nTNtlC0WQx13I6jjSAIVvJeTgJK25HxRciNTpzkGooCNiLdxKXOluA2lJPtNeKUfI
 drsqENzQ75XHDimRZERqNZyVAozhhyGdkEQ+Ao1gNV3wg/jv2EHG9Z1c7pNOniXbTJY6
 1MU79fe3oV4ZKoQTRSSPFc2gyP2GgFAx9uYHXLSwORMLCb8Gz8OTvOxIGaVSSC2oqVJq
 eUAd8s9LjgtdUsj17+MJH3wnh69UNK4K/WAymK7cbijzHWYNA3oZKk+9JcrcRPFRRkZi
 zHXQ==
X-Gm-Message-State: APjAAAVzmrEonN0HtXwmF4kVcqm9jDz80d+p+xqddgrFi4EysLNzFW/i
 s+NflljrcYcoiWcE7jU/9JmhGA==
X-Google-Smtp-Source: APXvYqwvz7JWD2HEdR5e4BkwVZV1oZMtKMC3nGM56TpQlUOa698nuBsd11/iLMyslPitIHxG5t1plA==
X-Received: by 2002:a5d:6a8c:: with SMTP id s12mr22488097wru.326.1558527652486; 
 Wed, 22 May 2019 05:20:52 -0700 (PDT)
Received: from [10.1.203.87] (nat-wifi.sssup.it. [193.205.81.22])
 by smtp.googlemail.com with ESMTPSA id z8sm22338145wrs.84.2019.05.22.05.20.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:20:51 -0700 (PDT)
Subject: Re: [PATCH v3 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
 <1556618986-18923-2-git-send-email-zhangqing@rock-chips.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <1d1063a5-3ec8-f430-febe-7e1471cd1812@linaro.org>
Date: Wed, 22 May 2019 14:20:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556618986-18923-2-git-send-email-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_052054_570224_209263E9 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, huangtao@rock-chips.com,
 linux-pm@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CkVsYWluZSwKCmFyZSB5b3UgdGFraW5nIGNhcmUgb2YgdGhlIGlzc3VlIHJlbGF0ZWQgdG8gdGhp
cyBwYXRjaC4gSWYgbm90IGZpeGVkLCBpdAp3aWxsIGJlIHJldmVydGVkLgoKCk9uIDMwLzA0LzIw
MTkgMTI6MDksIEVsYWluZSBaaGFuZyB3cm90ZToKPiBFeHBsaWNpdGx5IHVzZSB0aGUgcGluY3Ry
bCB0byBzZXQvdW5zZXQgdGhlIHJpZ2h0IG1vZGUKPiBpbnN0ZWFkIG9mIHJlbHlpbmcgb24gdGhl
IHBpbmN0cmwgaW5pdCBtb2RlLgo+IEFuZCBpdCByZXF1aXJlcyBzZXR0aW5nIHRoZSB0c2h1dCBw
b2xhcml0eSBiZWZvcmUgc2VsZWN0IHBpbmN0cmwuCj4gCj4gV2hlbiB0aGUgdGVtcGVyYXR1cmUg
c2Vuc29yIG1vZGUgaXMgc2V0IHRvIDAsIGl0IHdpbGwgYXV0b21hdGljYWxseQo+IHJlc2V0IHRo
ZSBib2FyZCB2aWEgdGhlIENsb2NrLVJlc2V0LVVuaXQgKENSVSkgaWYgdGhlIG92ZXIgdGVtcGVy
YXR1cmUKPiB0aHJlc2hvbGQgaXMgcmVhY2hlZC4gSG93ZXZlciwgd2hlbiB0aGUgcGluY3RybCBp
bml0aWFsaXplcywgaXQgZG9lcyBhCj4gdHJhbnNpdGlvbiB0byAib3RwX291dCIgd2hpY2ggbWF5
IGxlYWQgdGhlIFNvQyByZXN0YXJ0IGFsbCB0aGUgdGltZS4KPiAKPiAib3RwX291dCIgSU8gbWF5
IGJlIGNvbm5lY3RlZCB0byB0aGUgUkVTRVQgY2lyY3VpdCBvbiB0aGUgaGFyZHdhcmUuCj4gSWYg
dGhlIElPIGlzIGluIHRoZSB3cm9uZyBzdGF0ZSwgaXQgd2lsbCB0cmlnZ2VyIFJFU0VULgo+IChz
aW1pbGFyIHRvIHRoZSBlZmZlY3Qgb2YgcHJlc3NpbmcgdGhlIFJFU0VUIGJ1dHRvbikKPiB3aGlj
aCB3aWxsIGNhdXNlIHRoZSBzb2MgdG8gcmVzdGFydCBhbGwgdGhlIHRpbWUuCj4gCj4gU2lnbmVk
LW9mZi1ieTogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgfCAzNiArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hp
cF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gaW5kZXgg
OWM3NjQzZDYyZWQ3Li42ZGM3ZmM1MTZhYmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFs
L3JvY2tjaGlwX3RoZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVy
bWFsLmMKPiBAQCAtMTcyLDYgKzE3Miw5IEBAIHN0cnVjdCByb2NrY2hpcF90aGVybWFsX2RhdGEg
ewo+ICAJaW50IHRzaHV0X3RlbXA7Cj4gIAllbnVtIHRzaHV0X21vZGUgdHNodXRfbW9kZTsKPiAg
CWVudW0gdHNodXRfcG9sYXJpdHkgdHNodXRfcG9sYXJpdHk7Cj4gKwlzdHJ1Y3QgcGluY3RybCAq
cGluY3RybDsKPiArCXN0cnVjdCBwaW5jdHJsX3N0YXRlICpncGlvX3N0YXRlOwo+ICsJc3RydWN0
IHBpbmN0cmxfc3RhdGUgKm90cF9zdGF0ZTsKPiAgfTsKPiAgCj4gIC8qKgo+IEBAIC0xMjQyLDYg
KzEyNDUsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3RoZXJtYWxfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgCQlyZXR1cm4gZXJyb3I7Cj4gIAl9Cj4gIAo+ICsJdGhlcm1h
bC0+Y2hpcC0+Y29udHJvbCh0aGVybWFsLT5yZWdzLCBmYWxzZSk7Cj4gKwo+ICAJZXJyb3IgPSBj
bGtfcHJlcGFyZV9lbmFibGUodGhlcm1hbC0+Y2xrKTsKPiAgCWlmIChlcnJvcikgewo+ICAJCWRl
dl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBlbmFibGUgY29udmVydGVyIGNsb2NrOiAlZFxu
IiwKPiBAQCAtMTI2Nyw2ICsxMjcyLDMwIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJdGhlcm1hbC0+Y2hpcC0+aW5p
dGlhbGl6ZSh0aGVybWFsLT5ncmYsIHRoZXJtYWwtPnJlZ3MsCj4gIAkJCQkgIHRoZXJtYWwtPnRz
aHV0X3BvbGFyaXR5KTsKPiAgCj4gKwlpZiAodGhlcm1hbC0+dHNodXRfbW9kZSA9PSBUU0hVVF9N
T0RFX0dQSU8pIHsKPiArCQl0aGVybWFsLT5waW5jdHJsID0gZGV2bV9waW5jdHJsX2dldCgmcGRl
di0+ZGV2KTsKPiArCQlpZiAoSVNfRVJSKHRoZXJtYWwtPnBpbmN0cmwpKSB7Cj4gKwkJCWRldl9l
cnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBmaW5kIHRoZXJtYWwgcGluY3RybFxuIik7Cj4gKwkJ
CXJldHVybiBQVFJfRVJSKHRoZXJtYWwtPnBpbmN0cmwpOwo+ICsJCX0KPiArCj4gKwkJdGhlcm1h
bC0+Z3Bpb19zdGF0ZSA9IHBpbmN0cmxfbG9va3VwX3N0YXRlKHRoZXJtYWwtPnBpbmN0cmwsCj4g
KwkJCQkJCQkgICAiZ3BpbyIpOwo+ICsJCWlmIChJU19FUlJfT1JfTlVMTCh0aGVybWFsLT5ncGlv
X3N0YXRlKSkgewo+ICsJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gZmluZCB0aGVy
bWFsIGdwaW8gc3RhdGVcbiIpOwo+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPiArCQl9Cj4gKwo+ICsJ
CXRoZXJtYWwtPm90cF9zdGF0ZSA9IHBpbmN0cmxfbG9va3VwX3N0YXRlKHRoZXJtYWwtPnBpbmN0
cmwsCj4gKwkJCQkJCQkgICJvdHBvdXQiKTsKPiArCQlpZiAoSVNfRVJSX09SX05VTEwodGhlcm1h
bC0+b3RwX3N0YXRlKSkgewo+ICsJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gZmlu
ZCB0aGVybWFsIG90cG91dCBzdGF0ZVxuIik7Cj4gKwkJCXJldHVybiAtRUlOVkFMOwo+ICsJCX0K
PiArCj4gKwkJcGluY3RybF9zZWxlY3Rfc3RhdGUodGhlcm1hbC0+cGluY3RybCwgdGhlcm1hbC0+
b3RwX3N0YXRlKTsKPiArCX0KPiArCj4gIAlmb3IgKGkgPSAwOyBpIDwgdGhlcm1hbC0+Y2hpcC0+
Y2huX251bTsgaSsrKSB7Cj4gIAkJZXJyb3IgPSByb2NrY2hpcF90aGVybWFsX3JlZ2lzdGVyX3Nl
bnNvcihwZGV2LCB0aGVybWFsLAo+ICAJCQkJCQkmdGhlcm1hbC0+c2Vuc29yc1tpXSwKPiBAQCAt
MTMzNyw4ICsxMzY2LDggQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCByb2NrY2hpcF90aGVy
bWFsX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICAKPiAgCWNsa19kaXNhYmxlKHRoZXJt
YWwtPnBjbGspOwo+ICAJY2xrX2Rpc2FibGUodGhlcm1hbC0+Y2xrKTsKPiAtCj4gLQlwaW5jdHJs
X3BtX3NlbGVjdF9zbGVlcF9zdGF0ZShkZXYpOwo+ICsJaWYgKHRoZXJtYWwtPnRzaHV0X21vZGUg
PT0gVFNIVVRfTU9ERV9HUElPKQo+ICsJCXBpbmN0cmxfc2VsZWN0X3N0YXRlKHRoZXJtYWwtPnBp
bmN0cmwsIHRoZXJtYWwtPmdwaW9fc3RhdGUpOwo+ICAKPiAgCXJldHVybiAwOwo+ICB9Cj4gQEAg
LTEzODMsNyArMTQxMiw4IEBAIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgcm9ja2NoaXBfdGhl
cm1hbF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICAJZm9yIChpID0gMDsgaSA8IHRoZXJt
YWwtPmNoaXAtPmNobl9udW07IGkrKykKPiAgCQlyb2NrY2hpcF90aGVybWFsX3RvZ2dsZV9zZW5z
b3IoJnRoZXJtYWwtPnNlbnNvcnNbaV0sIHRydWUpOwo+ICAKPiAtCXBpbmN0cmxfcG1fc2VsZWN0
X2RlZmF1bHRfc3RhdGUoZGV2KTsKPiArCWlmICh0aGVybWFsLT50c2h1dF9tb2RlID09IFRTSFVU
X01PREVfR1BJTykKPiArCQlwaW5jdHJsX3NlbGVjdF9zdGF0ZSh0aGVybWFsLT5waW5jdHJsLCB0
aGVybWFsLT5vdHBfc3RhdGUpOwo+ICAKPiAgCXJldHVybiAwOwo+ICB9Cj4gCgoKLS0gCiA8aHR0
cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3Bh
Z2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4g
VHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
