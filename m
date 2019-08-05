Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D8A8194A
	for <lists+linux-rockchip@lfdr.de>; Mon,  5 Aug 2019 14:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kyTMiMuBbY1hVXok0U+w7lxgtb0tm6jHm7VtYHy/jfs=; b=DP0IaYDpOYPraK4n/81HvS3qf
	LLk00Q2vNKRYy83WuBGpETdtrpCE7064lrFjXb5GKMcX8HK7apwS+Rc7XI5az1cUVl3EoJcLoAeVM
	ZN23iyqdkXPforf7Bcoq9a69n0IyhIzuPMprEadI/iFawjYQiimfdHz1n9jTwQIQvNrsL/XP7mZf+
	oHFFG1DZTlvXJ7ECvf7w0z0YJcAVS82VQjp4muroJOX/VLMTI0mZS6tmyqYlAAMICbKJJ/LHulg8v
	LdRMSQaFL+GafwvX5itfZJialg2HPi6n47FE44sp7pkEC39krWNbUKbsW8228aCdCzwr64w7QNcWQ
	qyNDeI20w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huc5o-0008AM-94; Mon, 05 Aug 2019 12:28:00 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huc5l-00089S-5N
 for linux-rockchip@lists.infradead.org; Mon, 05 Aug 2019 12:27:58 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.234])
 by regular1.263xmail.com (Postfix) with ESMTP id A22241EB;
 Mon,  5 Aug 2019 20:27:52 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.33.93] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18527T140467289515776S1565008069691035_; 
 Mon, 05 Aug 2019 20:27:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3b179978bc00ef6f9102ea122f635e61>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 02/15] rockchip: Add cpu-info
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <f6c49feb-c7f6-71e6-33e1-67bb47618ecc@rock-chips.com>
Date: Mon, 5 Aug 2019 20:27:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729074711.16988-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_052757_398817_E7791312 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SmFnYW4sCgpPbiAyMDE5LzcvMjkg5LiL5Y2IMzo0NiwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQg
Y3B1IGluZm9ybWF0aW9uIGZvciByb2NrY2hpcCBzb2MuCj4KPiBUaGlzIHdvdWxkIGhlbHAgdG8g
cHJpbnQgdGhlIFNvQyBmYW1pbHkgbnVtYmVyLCB3aXRoCj4gYXNzb2NpYXRlZCB0ZW1wYXJhdHVy
ZSwgY2xvY2sgYW5kIHJlYXNvbiBmb3IgcmVzZXQgZXRjLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFn
YW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gLS0tCj4gICBhcmNoL2FybS9t
YWNoLXJvY2tjaGlwL01ha2VmaWxlICAgfCAgMSArCj4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlw
L2NwdS1pbmZvLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDIgZmlsZXMgY2hh
bmdlZCwgMjUgaW5zZXJ0aW9ucygrKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21h
Y2gtcm9ja2NoaXAvY3B1LWluZm8uYwo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9j
a2NoaXAvTWFrZWZpbGUgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL01ha2VmaWxlCj4gaW5kZXgg
YTEyYjhkNDQzNC4uNjU1YjNlM2UxYSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tj
aGlwL01ha2VmaWxlCj4gKysrIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9NYWtlZmlsZQo+IEBA
IC0yNSw2ICsyNSw3IEBAIGlmZXEgKCQoQ09ORklHX1NQTF9CVUlMRCkkKENPTkZJR19UUExfQlVJ
TEQpLCkKPiAgICMgd2UgY2FuIGhhdmUgdGhlIHByZXByb2Nlc3NvciBjb3JyZWN0bHkgcmVjb2du
aXNlIGJvdGggMHgwIGFuZCAwCj4gICAjIG1lYW5pbmcgInR1cm4gaXQgb2ZmIi4KPiAgIG9iai15
ICs9IGJvb3RfbW9kZS5vCj4gK29iai0kKENPTkZJR19ESVNQTEFZX0NQVUlORk8pICs9IGNwdS1p
bmZvLm8KPiAgIAo+ICAgb2JqLSQoQ09ORklHX1JPQ0tDSElQX1JLMzE4OCkgKz0gcmszMTg4LWJv
YXJkLm8KPiAgIG9iai0kKENPTkZJR19ST0NLQ0hJUF9SSzMxMjgpICs9IHJrMzEyOC1ib2FyZC5v
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvY3B1LWluZm8uYyBiL2FyY2gv
YXJtL21hY2gtcm9ja2NoaXAvY3B1LWluZm8uYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5k
ZXggMDAwMDAwMDAwMC4uMDg4ZmM4MDZhNgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2Fy
bS9tYWNoLXJvY2tjaGlwL2NwdS1pbmZvLmMKPiBAQCAtMCwwICsxLDI0IEBACj4gKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ICsvKgo+ICsgKiAoQykgQ29w
eXJpZ2h0IDIwMTkgQW1hcnVsYSBTb2x1dGlvbnMuCj4gKyAqIEF1dGhvcjogSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgPGNvbW1v
bi5oPgo+ICsKPiAraW50IHByaW50X2NwdWluZm8odm9pZCkKPiArewo+ICsJcHV0cygiU29DOiAg
IFJvY2tjaGlwICIpOwo+ICsKPiArCS8qIFRPRE8gcHJpbnQgb3BlcmF0aW5nIHRlbXBhcmF0dXJl
IGFuZCBjbG9jayAqLwo+ICsjIGlmZGVmIENPTkZJR19ST0NLQ0hJUF9SSzMyODgKPiArCXB1dHMo
IlJLMzI4OFxuIik7Cj4gKyMgZWxpZiBDT05GSUdfUk9DS0NISVBfUkszMzk5Cj4gKwlwdXRzKCJS
SzMzOTlcbiIpOwo+ICsjIGVsc2UKPiArIyB3YXJuaW5nIFBsZWFzZSB1cGRhdGUgY3B1LmMgd2l0
aCBjb3JyZWN0IENQVSBpbmZvcm1hdGlvbgo+ICsJcHV0cygiRmFtaWx5XG4iKTsKPiArIyBlbmRp
ZgoKIMKgwqDCoCBDYW4gd2UgdXNlIENPTkZJR19TWVNfU09DIGFuZCBub3Qgb25lIG1hY3JvIGZv
ciBlYWNoIFNvQz8KCgpUaGFua3MsCgotIEtldmVyCgo+ICsKPiArCXJldHVybiAwOwo+ICt9CgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
