Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCE51D43C1
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LJdFeA06n7yQC0OZaHX2vATvuTembJsi8LQQhe5SZ6I=; b=W8yq2NnyO5oIt1Weiqm/sWdR/
	jSFsmSLkV2ecWwViQaAAbOKLzOd+W36gZk2dFVO8E4AoC02ptjIn8qBOY4qTqejE9UlXE0j2Arut0
	uXs88Clt+IVaOvdjYef4aXyfCJ4B9UECHSOnsIKGJY4rUrmu5kYcXCbkzQQy+LO31wWga6Z8f2PSV
	F2bijYUZQfDwv8XxD9AH94cQWs450dqGJ1A9xTiF+Dygfu756tvgvI3/toDc1vS9n2lmxd7TpqFFm
	C3dNLGZL9E/w5FVUTkafmUXleTAGf7ReGRhvxhm7kMWF9iB6wblWBufaRae1fNiU2Wfng/wVpcixD
	UrBqp7iJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQRf-0003FU-V4; Fri, 15 May 2020 02:51:31 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQRc-0003Es-FT
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:51:30 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 8253564B;
 Fri, 15 May 2020 10:51:25 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P2324T140089541781248S1589511073501074_; 
 Fri, 15 May 2020 10:51:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3cf9cebb73b1a05c5a3a5c126f95eec1>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v5 16/16] roc-rk3399-pc: Enable USB3.0 Host
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071803.5781-1-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <de3ee626-84c0-2d5f-24f2-d9b5f933f58a@rock-chips.com>
Date: Fri, 15 May 2020 10:51:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200513071803.5781-1-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_195129_014551_E0C8D164 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMyDkuIvljYgzOjE4LCBGcmFuayBXYW5nIHdyb3RlOgo+IEZyb206IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+Cj4gRW5hYmxlIFVTQjMuMCBIb3N0
IHN1cHBvcnQgZm9yIFJPQy1SSzMzOTktUEMgYm9hcmRzLgo+Cj4gVGVzdGVkIFVTQjMuMCBTU0Qg
b24gVHlwZSBDMSBwb3J0IG9uIGJvYXJkLgo+Cj4gPT4gdXNiIHN0YXJ0Cj4gc3RhcnRpbmcgVVNC
Li4uCj4gQnVzIHVzYkBmZTM4MDAwMDogVVNCIEVIQ0kgMS4wMAo+IEJ1cyB1c2JAZmUzYzAwMDA6
IFVTQiBFSENJIDEuMDAKPiBCdXMgZHdjMzogdXNiIG1heGltdW0tc3BlZWQgbm90IGZvdW5kCj4g
UmVnaXN0ZXIgMjAwMDE0MCBOYnJQb3J0cyAyCj4gU3RhcnRpbmcgdGhlIGNvbnRyb2xsZXIKPiBV
U0IgWEhDSSAxLjEwCj4gc2Nhbm5pbmcgYnVzIHVzYkBmZTM4MDAwMCBmb3IgZGV2aWNlcy4uLiAx
IFVTQiBEZXZpY2UocykgZm91bmQKPiBzY2FubmluZyBidXMgdXNiQGZlM2MwMDAwIGZvciBkZXZp
Y2VzLi4uIDIgVVNCIERldmljZShzKSBmb3VuZAo+IHNjYW5uaW5nIGJ1cyBkd2MzIGZvciBkZXZp
Y2VzLi4uIDYgVVNCIERldmljZShzKSBmb3VuZAo+ICAgICAgICAgc2Nhbm5pbmcgdXNiIGZvciBz
dG9yYWdlIGRldmljZXMuLi4gMSBTdG9yYWdlIERldmljZShzKSBmb3VuZAo+ID0+IHVzYiB0cmVl
Cj4gVVNCIGRldmljZSB0cmVlOgo+ICAgIDEgIEh1YiAoNDgwIE1iL3MsIDBtQSkKPiAgICAgICB1
LWJvb3QgRUhDSSBIb3N0IENvbnRyb2xsZXIKPgo+ICAgIDEgIEh1YiAoNDgwIE1iL3MsIDBtQSkK
PiAgICB8ICB1LWJvb3QgRUhDSSBIb3N0IENvbnRyb2xsZXIKPiAgICB8Cj4gICAgKy0yICBIdWIg
KDQ4MCBNYi9zLCAxMDBtQSkKPiAgICAgICAgICBVU0IgMi4wIEh1YiBbTVRUXQo+Cj4gICAgMSAg
SHViICg1IEdiL3MsIDBtQSkKPiAgICB8ICBVLUJvb3QgWEhDSSBIb3N0IENvbnRyb2xsZXIKPiAg
ICB8Cj4gICAgKy0yICBIdWIgKDQ4MCBNYi9zLCAwbUEpCj4gICAgfCB8ICBWSUEgTGFicywgSW5j
LiBVU0IyLjAgSHViCj4gICAgfCB8Cj4gICAgfCArLTQgIEh1YiAoNDgwIE1iL3MsIDEwMG1BKQo+
ICAgIHwgICB8ICAgVVNCIDIuMCBIdWIKPiAgICB8ICAgfAo+ICAgIHwgICArLTUgICAoNDgwIE1i
L3MsIDEwMG1BKQo+ICAgIHwgICAgICAgIFZJQSBUZWNobm9sb2dpZXMgSW5jLiBVU0IgMi4wIEJJ
TExCT0FSRCAgMDAwMDAwMDAwMDAwMDAwMQo+ICAgIHwKPiAgICArLTMgIEh1YiAoNSBHYi9zLCAw
bUEpCj4gICAgICB8ICBWSUEgTGFicywgSW5jLiBVU0IzLjAgSHViCj4gICAgICB8Cj4gICAgICAr
LTYgIE1hc3MgU3RvcmFnZSAoNSBHYi9zLCAyMjRtQSkKPiAgICAgICAgICAgSk1pY3JvbiBFeHRl
cm5hbCBEaXNrIDMuMCBEQjEyMzQ1Njc4QTIKPgo+ID0+IHVzYiByZXNldAo+IHJlc2V0dGluZyBV
U0IuLi4KPiBCdXMgdXNiQGZlMzgwMDAwOiBVU0IgRUhDSSAxLjAwCj4gQnVzIHVzYkBmZTNjMDAw
MDogVVNCIEVIQ0kgMS4wMAo+IEJ1cyBkd2MzOiB1c2IgbWF4aW11bS1zcGVlZCBub3QgZm91bmQK
PiBSZWdpc3RlciAyMDAwMTQwIE5iclBvcnRzIDIKPiBTdGFydGluZyB0aGUgY29udHJvbGxlcgo+
IFVTQiBYSENJIDEuMTAKPiBzY2FubmluZyBidXMgdXNiQGZlMzgwMDAwIGZvciBkZXZpY2VzLi4u
IDEgVVNCIERldmljZShzKSBmb3VuZAo+IHNjYW5uaW5nIGJ1cyB1c2JAZmUzYzAwMDAgZm9yIGRl
dmljZXMuLi4gMiBVU0IgRGV2aWNlKHMpIGZvdW5kCj4gc2Nhbm5pbmcgYnVzIGR3YzMgZm9yIGRl
dmljZXMuLi4gNiBVU0IgRGV2aWNlKHMpIGZvdW5kCj4gICAgICAgICBzY2FubmluZyB1c2IgZm9y
IHN0b3JhZ2UgZGV2aWNlcy4uLiAxIFN0b3JhZ2UgRGV2aWNlKHMpIGZvdW5kCj4KPiBTaWduZWQt
b2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2Vk
LWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtl
dmVyCj4gLS0tCj4gICBjb25maWdzL3JvYy1wYy1tZXp6YW5pbmUtcmszMzk5X2RlZmNvbmZpZyB8
IDUgKysrKysKPiAgIGNvbmZpZ3Mvcm9jLXBjLXJrMzM5OV9kZWZjb25maWcgICAgICAgICAgIHwg
NiArKysrKysKPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2NvbmZpZ3Mvcm9jLXBjLW1lenphbmluZS1yazMzOTlfZGVmY29uZmlnIGIvY29uZmln
cy9yb2MtcGMtbWV6emFuaW5lLXJrMzM5OV9kZWZjb25maWcKPiBpbmRleCAwYjg1MzgwNWYzLi4x
ZjEwODU2Y2FhIDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3Mvcm9jLXBjLW1lenphbmluZS1yazMzOTlf
ZGVmY29uZmlnCj4gKysrIGIvY29uZmlncy9yb2MtcGMtbWV6emFuaW5lLXJrMzM5OV9kZWZjb25m
aWcKPiBAQCAtMjksNiArMjksNyBAQCBDT05GSUdfRU5WX0lTX0lOX01NQz15Cj4gICBDT05GSUdf
U1lTX1JFTE9DX0dEX0VOVl9BRERSPXkKPiAgIENPTkZJR19ST0NLQ0hJUF9HUElPPXkKPiAgIENP
TkZJR19TWVNfSTJDX1JPQ0tDSElQPXkKPiArQ09ORklHX01JU0M9eQo+ICAgQ09ORklHX01NQ19E
Vz15Cj4gICBDT05GSUdfTU1DX0RXX1JPQ0tDSElQPXkKPiAgIENPTkZJR19NTUNfU0RIQ0k9eQo+
IEBAIC0zOSw2ICs0MCw4IEBAIENPTkZJR19FVEhfREVTSUdOV0FSRT15Cj4gICBDT05GSUdfR01B
Q19ST0NLQ0hJUD15Cj4gICBDT05GSUdfTlZNRT15Cj4gICBDT05GSUdfUENJPXkKPiArQ09ORklH
X1BIWV9ST0NLQ0hJUF9JTk5PX1VTQjI9eQo+ICtDT05GSUdfUEhZX1JPQ0tDSElQX1RZUEVDPXkK
PiAgIENPTkZJR19QTUlDX1JLOFhYPXkKPiAgIENPTkZJR19SRUdVTEFUT1JfUFdNPXkKPiAgIENP
TkZJR19SRUdVTEFUT1JfUks4WFg9eQo+IEBAIC01NCw2ICs1Nyw4IEBAIENPTkZJR19VU0JfWEhD
SV9IQ0Q9eQo+ICAgQ09ORklHX1VTQl9YSENJX0RXQzM9eQo+ICAgQ09ORklHX1VTQl9FSENJX0hD
RD15Cj4gICBDT05GSUdfVVNCX0VIQ0lfR0VORVJJQz15Cj4gK0NPTkZJR19VU0JfRFdDMz15Cj4g
K0NPTkZJR19VU0JfRFdDM19HRU5FUklDPXkKPiAgIENPTkZJR19VU0JfSE9TVF9FVEhFUj15Cj4g
ICBDT05GSUdfVVNCX0VUSEVSX0FTSVg9eQo+ICAgQ09ORklHX1VTQl9FVEhFUl9BU0lYODgxNzk9
eQo+IGRpZmYgLS1naXQgYS9jb25maWdzL3JvYy1wYy1yazMzOTlfZGVmY29uZmlnIGIvY29uZmln
cy9yb2MtcGMtcmszMzk5X2RlZmNvbmZpZwo+IGluZGV4IGFmZjY5MGYwMzkuLjc2ZTc2YzE2MGUg
MTAwNjQ0Cj4gLS0tIGEvY29uZmlncy9yb2MtcGMtcmszMzk5X2RlZmNvbmZpZwo+ICsrKyBiL2Nv
bmZpZ3Mvcm9jLXBjLXJrMzM5OV9kZWZjb25maWcKPiBAQCAtMjgsNiArMjgsNyBAQCBDT05GSUdf
RU5WX0lTX0lOX01NQz15Cj4gICBDT05GSUdfU1lTX1JFTE9DX0dEX0VOVl9BRERSPXkKPiAgIENP
TkZJR19ST0NLQ0hJUF9HUElPPXkKPiAgIENPTkZJR19TWVNfSTJDX1JPQ0tDSElQPXkKPiArQ09O
RklHX01JU0M9eQo+ICAgQ09ORklHX01NQ19EVz15Cj4gICBDT05GSUdfTU1DX0RXX1JPQ0tDSElQ
PXkKPiAgIENPTkZJR19NTUNfU0RIQ0k9eQo+IEBAIC0zNiwxMSArMzcsMTQgQEAgQ09ORklHX1NQ
SV9GTEFTSF9XSU5CT05EPXkKPiAgIENPTkZJR19ETV9FVEg9eQo+ICAgQ09ORklHX0VUSF9ERVNJ
R05XQVJFPXkKPiAgIENPTkZJR19HTUFDX1JPQ0tDSElQPXkKPiArQ09ORklHX1BIWV9ST0NLQ0hJ
UF9JTk5PX1VTQjI9eQo+ICtDT05GSUdfUEhZX1JPQ0tDSElQX1RZUEVDPXkKPiAgIENPTkZJR19Q
TUlDX1JLOFhYPXkKPiAgIENPTkZJR19SRUdVTEFUT1JfUFdNPXkKPiAgIENPTkZJR19SRUdVTEFU
T1JfUks4WFg9eQo+ICAgQ09ORklHX1BXTV9ST0NLQ0hJUD15Cj4gICBDT05GSUdfUkFNX1JLMzM5
OV9MUEREUjQ9eQo+ICtDT05GSUdfRE1fUkVTRVQ9eQo+ICAgQ09ORklHX0JBVURSQVRFPTE1MDAw
MDAKPiAgIENPTkZJR19ERUJVR19VQVJUX1NISUZUPTIKPiAgIENPTkZJR19ST0NLQ0hJUF9TUEk9
eQo+IEBAIC01MCw2ICs1NCw4IEBAIENPTkZJR19VU0JfWEhDSV9IQ0Q9eQo+ICAgQ09ORklHX1VT
Ql9YSENJX0RXQzM9eQo+ICAgQ09ORklHX1VTQl9FSENJX0hDRD15Cj4gICBDT05GSUdfVVNCX0VI
Q0lfR0VORVJJQz15Cj4gK0NPTkZJR19VU0JfRFdDMz15Cj4gK0NPTkZJR19VU0JfRFdDM19HRU5F
UklDPXkKPiAgIENPTkZJR19VU0JfS0VZQk9BUkQ9eQo+ICAgQ09ORklHX1VTQl9IT1NUX0VUSEVS
PXkKPiAgIENPTkZJR19VU0JfRVRIRVJfQVNJWD15CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
