Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDACA142D32
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 15:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yTvN5HkXH9vD+zeihOtAqDwJGw9tV8HTZ/LeN2ysmdU=; b=B+UW8A/TFsuelD5KTNUlvqaGF
	ZHkgUpCmgfzmon3nNIe8UuFDSDsq9g4uVqHdFPhW4IuvrlIvfCBhOjK3fKzQ+VNeVbpTe66V4jAuj
	cQWaEOuC0MYewdSx1pPVHd1a809Td8rZIiiyTMd64P9Zu6bqccJ1PLHRqH8bL2ukGX/eBkRI0o+tk
	+OkUpFQS756q3aSk4qAtgo4xFVz9wtuFpPQSo+O8aIQP8zI0475zbxXVEzRbLcAI1DB3Bre7GViAp
	w47pjppIg/PW3TQ08lD/9afzK3/8uivblV4JJ47WxTF8KICV1AidghBI4MTnLgQQGxW/x9V23OLiF
	U0JnUeMVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itXvn-0002Wt-LB; Mon, 20 Jan 2020 14:21:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itXvh-0002Vg-My
 for linux-rockchip@lists.infradead.org; Mon, 20 Jan 2020 14:21:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id z124so15605222pgb.13
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Jan 2020 06:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8E3LRqxKWSJfkkJ8nF8BrhNVWHzr4oovt9xNy2ECPZw=;
 b=MrGpEq5f95RjzKX+K9agMHoOO/DR9lCooXV9nSQor1+iUOs5bjVIMQRkZRlnrSpzEv
 r9IGrEYlAPlU0NBC0Yh/FIstYIIle18S1d5za6NJkNmqBlfXJIGUMHvPPhq6d7rl4Uem
 mkZyeuw+JXdokXpLl3ezX6lzhQr396xs350Nkk0RU7lHFDl/rBe11B//6o+udFkZ89Qi
 T3I0C1/66EvJAOelxMHyCuEGeWqIYdIVJM4Jxq54CGtGLiyD6J7AK0ZlMfi7qrUyTegz
 oSc1r+BlIINicegh2kPjvLn96/xGLBh2/gWT6tqwo1BTkI2FDhuiMJhnie+9FK6gXS9t
 udbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8E3LRqxKWSJfkkJ8nF8BrhNVWHzr4oovt9xNy2ECPZw=;
 b=VNR9p7Z4C3rOIeErQ7wbWaGXF/xZfayFCQYnSaqNQ51IS403+QxcMzREtDcR+WatIZ
 lXS2qVUf7W/WITvx0sqgMBEUsRZIVLuD9X/VUF9cqwlCtPQNTiQPhQmHonO8UL2byI23
 AQqjDRA2GpFxUniKxbtai1MO44xxX39dQlnWrNn7CVCmL1xqLpIZp1fWFijdSKuePy1O
 0E/Tsyyn0ebWc4BAz7a5UhqlflS/MnmU9qInFDO6dMOrTR6BmaDwP+Ip332cxm9ZX8aC
 c3bvhtUJDSz/G4WUn4mz0wHReMi1bj8X7Z+CeIlO/9SlsyDnvDm9dYIdqgMWPl0koTfd
 simQ==
X-Gm-Message-State: APjAAAXt2VLVC6RdW9FlnquaC+HGiSwlkjl0ZaNvf4l/fM8w/QfvZJZB
 h9nql1uNvTZX+O8lo/QveujAjeWf
X-Google-Smtp-Source: APXvYqy5CAGjZ7NT2LD5lX6OlrEIwIIRCga5Q5oavOeqTRD4chaXDJD4yFNzZEWW+AbQp/4/4WdGHQ==
X-Received: by 2002:a63:cb06:: with SMTP id p6mr60103196pgg.236.1579530083959; 
 Mon, 20 Jan 2020 06:21:23 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 g9sm40314223pfm.150.2020.01.20.06.21.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jan 2020 06:21:21 -0800 (PST)
Subject: Re: [Bug ?] usb :typec :tcpm :fusb302
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Markus Reichl <m.reichl@fivetechno.de>
References: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
 <20200120115828.GC32175@kuha.fi.intel.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <e05b6c1f-5e00-c000-23b9-1683230fd9f7@roeck-us.net>
Date: Mon, 20 Jan 2020 06:21:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200120115828.GC32175@kuha.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_062125_749535_7D3DEF86 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMS8yMC8yMCAzOjU4IEFNLCBIZWlra2kgS3JvZ2VydXMgd3JvdGU6Cj4gSGkgTWFya3VzLAo+
IAo+IE9uIFRodSwgSmFuIDA5LCAyMDIwIGF0IDA1OjI5OjA3UE0gKzAxMDAsIE1hcmt1cyBSZWlj
aGwgd3JvdGU6Cj4+IEhpLAo+Pgo+PiBJJ20gd29ya2luZyB3aXRoIGEgUk9DLVJLMzM5OS1QQyBh
cm02NCBib2FyZCBmcm9tIGZpcmVmbHksIGNpcmN1aXQgc2hlZXQgWzFdLgo+PiBUaGUgYm9hcmQg
aXMgcG93ZXJlZCBmcm9tIGFuIFVTQi1DIHR5cGUgY29ubmVjdG9yIHZpYSBhbiBGVVNCMzAyIFBE
IGNvbnRyb2xsZXIuCj4+IFdpdGggbWVhc3VyZWQgMTVXKyBwb3dlciBjb25zdW1wdGlvbiBpdCBz
aG91bGQgdXNlIGhpZ2hlciB2b2x0YWdlIFBEIG1vZGVzIHRoYW4KPj4gdGhlIHN0YW5kYXJkIDVW
IFVTQi1DIG1vZGUuCj4+Cj4+IFdoZW4gSSBhZGQgdGhlIHJlbGF0ZWQgY29ubmVjdG9yIG5vZGUg
aW4gRFRTIFsyXSB0aGUgRlVTQjMwMiBpbml0aWFsaXplcwo+PiB0aGUgcmlnaHQgUEQgbW9kZSAo
ZS5nLiAxNVYvM0EpLgo+Pgo+PiBCdXQgZHVyaW5nIGluaXRpYWxpc2F0aW9uIHRoZSBQRCBpcyBz
d2l0Y2hlZCBvZmYgc2hvcnRseSBhbmQgdGhlIGJvYXJkIGhhcyBhIGJsYWNrb3V0Lgo+PiBXaGVu
IEkgaW5qZWN0IGEgYmFja3VwIHN1cHBseSB2b2x0YWdlIGJlaGluZCB0aGUgRlVTQjMwMiAoZS5n
LiBhdCBTWVNfMTJWIGxpbmUpIGR1cmluZyBib290Cj4+IEkgY2FuIHJlbW92ZSB0aGUgYmFja3Vw
IGFmdGVyIHN1Y2Nlc2Z1bGwgc2V0dGluZyB1cCB0aGUgUEQgYW5kIHRoZSBib2FyZCB3aWxsIHJ1
biBmaW5lLgo+Pgo+PiBJcyBpdCBwb3NzaWJsZSB0byBjaGFuZ2UgdGhlIGJlaGF2aW91ciBvZiB0
aGUgZnVzYjMwMiBkcml2ZXIgdG8gbm90IHBvd2VyIGRvd24gdGhlIFBEIHN1cHBseQo+PiBkdXJp
bmcgaW5pdD8KPiAKPiBJIGd1ZXNzIGl0J3MgYWxzbyBwb3NzaWJsZSB0aGF0IHRoZSBwcm9ibGVt
IGlzIHdpdGggdGNwbS5jIGluc3RlYWQgb2YKPiBmdXNiMzAyLmMuIHRjcG0uYyBwcm92aWRlcyB0
aGUgVVNCIFBEIHN0YXRlIG1hdGNoaW5lcy4gR3VlbnRlciEgQ2FuCj4geW91IHRha2UgYSBsb29r
IGF0IHRoaXM/Cj4gCgpUaGVyZSB3YXMgYWx3YXlzIGEgcHJvYmxlbSB3aXRoIGhhbmRvZmYgZnJv
bSB0aGUgYm9vdGxvYWRlci4gdGNwbV9pbml0KCkgY2FsbHMKdGNwbV9yZXNldF9wb3J0KCkgd2hp
Y2ggdHVybnMgdmJ1cyBhbmQgdmNvbm4gb2ZmLCB3aGljaCBJIGltYWdpbmUgY2FuCnRyaWdnZXIg
dGhlIHNpdHVhdGlvbi4KClVuZm9ydHVuYXRlbHkgSSB3YXMgbmV2ZXIgYWJsZSB0byBzb2x2ZSB0
aGUgcHV6emxlLiBUaGUgVHlwZS1DIHByb3RvY29sIGRvZXMKbm90IHN1cHBvcnQgYW55IGtpbmQg
b2YgImhhbmQtb2ZmIiBmcm9tIG9uZSBjb21wb25lbnQgaW4gdGhlIHN5c3RlbSB0byBhbm90aGVy
LgpJZiB0aGUgc3RhdGUgbWFjaGluZSBkb2Vzbid0IHN0YXJ0IGZyb20gYSBjbGVhbiBzdGF0ZSwg
dGhlcmUgaXMgcHJldHR5Cm11Y2ggbm8gZ3VhcmFudGVlIHRoYXQgaXQgZXZlciBzeW5jaHJvbml6
ZXMuCgpNYXliZSBzb21lb25lIGNhbiBmaW5kIGEgYmV0dGVyIHNvbHV0aW9uLCBidXQgd2hlbiBJ
IHdyb3RlIHRoZSBjb2RlIEkganVzdApjb3VsZCBub3QgZ2V0IGl0IHRvIHdvcmsgcmVsaWFibHkg
d2l0aG91dCByZXNldHRpbmcgZXZlcnl0aGluZyBkdXJpbmcKcmVnaXN0cmF0aW9uLgoKTm90ZSB0
aGF0IHY0LjQgZGlkIG5vdCBpbmNsdWRlIHRoZSB1cHN0cmVhbSB0Y3BtIGNvZGUsIHN1Z2dlc3Rp
bmcgdGhlCmNvZGUgaW4gdGhlIHZlbmRvciBrZXJuZWwgd2FzIHBvc3NpYmx5IHVzaW5nIGEgZGlm
ZmVyZW50IG9yIGJhY2twb3J0ZWQKc3RhdGUgbWFjaGluZS4gSW1wb3NzaWJsZSB0byBzYXkgd2hh
dCB3YXMgZG9uZSB0aGVyZSB3aXRob3V0IGFjY2Vzcwp0byB0aGUgY29kZS4KCkd1ZW50ZXIKCj4g
Qm90aCB0Y3BtLmMgYW5kIGZ1c2IzMDIuYyBjcmVhdGUgZGVidWdmcyBlbnRyaWVzIHRoYXQgaGF2
ZSBhIG1vcmUKPiBkZXRhaWxlZCBsb2cgYWJvdXQgdGhpbmdzIHRoYXQgYXJlIGhhcHBlbmluZy4g
Q2FuIHlvdSBjaGVjayB3aGF0IHlvdQo+IGhhdmUgaW4gdGhvc2UgKHdoZW4geW91IGJvb3Qgd2l0
aCB0aGUgbWFpbnMgY2FibGUgcGx1Z2dlZCBpdCk/Cj4gCj4gICAgICAgICAgJSBtb3VudCBkZWJ1
Z2ZzIC10IGRlYnVnZnMgL3N5cy9rZXJuZWwvZGVidWcKPiAgICAgICAgICAlIGNhdCAvc3lzL2tl
cm5lbC9kZWJ1Zy90Y3BtKgo+ICAgICAgICAgICUgY2F0IC9zeXMva2VybmVsL2RlYnVnL2Z1c2Iz
MDIvKgo+IAo+IFdoaWNoIGtlcm5lbCBhcmUgeW91IHJ1bm5pbmcgYnkgdGhlIHdheT8KPiAKPj4g
SW4gdmVuZG9yIGtlcm5lbCAoNC40KSB0aGlzIGlzIGRvbmUgc29tZWhvdyBidXQgdGhlIHNvdXJj
ZXMgYXJlIHRvbyBkaWZmZXJlbnQgZm9yIG1lIHRvIGZpbmQKPj4gb3V0IGhvdy4KPj4KPj4gR3J1
w58sCj4+IC0tIAo+PiBNYXJrdXMgUmVpY2hsCj4+Cj4+IFsxXQo+PiBodHRwOi8vZG93bmxvYWQu
dC1maXJlZmx5LmNvbS9wcm9kdWN0L1JLMzM5OS9Eb2NzL0hhcmR3YXJlLyVFNSU4RSU5RiVFNyU5
MCU4NiVFNSU5QiVCRSVFNSU5MiU4QyVFOCVCNCVCNCVFNyU4OSU4NyVFNSU5QiVCRS9ST0MtUksz
Mzk5LVBDL1JPQy0zMzk5LVBDLVYxMC1BLTIwMTgwODA0XyVFNSU4RSU5RiVFNyU5MCU4NiVFNSU5
QiVCRS5wZGYKPj4KPj4gWzJdCj4+IGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzEyLzEwLzUx
Nwo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
