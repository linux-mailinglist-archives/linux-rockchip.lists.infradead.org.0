Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C9B107EC9
	for <lists+linux-rockchip@lfdr.de>; Sat, 23 Nov 2019 15:21:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EWz5ZMZrRjNct4iM+PLEO4TpTIArDQrYSP/PeqeLiY0=; b=sKxqCQUZTGlQI2fEwFu888Rlf
	2CrYmmZm2IyndzcbjnzJ84vN/70ZWbHakqXcCTzAEJkHoDV5DRqksPFR/AQAV1pJRtgCIzARw2unb
	W+0Pp/HEKv72LV5AwtfeIBJLvy2vO9VgD2Xvo6dEfvzudrJglfA2VLFguob0vwcCp0yMqi9rw2IWu
	FmPEcDtT0/+4BRv33JMH/WpCbvQq9GDF8agFnw7EzAWuLHBlcsHbRcSjv/RaMwNTMlygrCHe7y370
	ZKkgVMPLPTPOZV5dJfxGOBPmALCxXE90hDT7KXqqs26cANOCa/wIADvMNNrwbU3hWIWwQ52lRyo9B
	0WRGQE+6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYWHs-0003e9-Qz; Sat, 23 Nov 2019 14:21:24 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYWHp-0003dL-35
 for linux-rockchip@lists.infradead.org; Sat, 23 Nov 2019 14:21:23 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id B44A25EC;
 Sat, 23 Nov 2019 22:21:15 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.214.198])
 by smtp.263.net (postfix) whith ESMTP id
 P24681T140253046839040S1574518873541743_; 
 Sat, 23 Nov 2019 22:21:14 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8a66e24b3b1c2734f699a2e15bd1d05b>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.214.198
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 05/10] fastboot: rockchip: Select
 FASTBOOT_FLASH[_MMC_DEV]
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <cbf3662a-5034-cdd3-8f68-7efbc6fda4b3@rock-chips.com>
Date: Sat, 23 Nov 2019 22:21:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119082623.6165-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_062121_669556_25A6AE8F 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTEvMTkg5LiL5Y2INDoyNiwgSmFnYW4gVGVraSB3cm90ZToKPiBTZWxlY3QgQ09O
RklHX0ZBU1RCT09UX0ZMQVNILCBDT05GSUdfRkFTVEJPT1RfRkxBU0hfTU1DX0RFVgo+IGZvciBy
b2NrY2hpcCBTb0MgcGxhZm9ybXMgaW4gZmFzdGJvb3QgS2NvbmZpZyBmaWxlIGluc3RlYWQKPiBv
ZiBkZWZpbmVkIGl0IGluIGJvYXJkIGRlZmNvbmZpZy4KPgo+IFRoaXMgZXZlbnR1YWxseSBkcm9w
IHRoZSBleHBsaWNpdCBjb25maWdzIGRlZmluZWQgaW4KPiBzdXBwb3J0aW5nIGJvYXJkIGRlZmNv
bmZpZyBmaWxlcy4KPgo+IFRlc3RlZC1ieTogTGV2aW4gRHUgPGRqd0B0LWNoaXAuY29tLmNuPgo+
IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoK
UmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFu
a3MsCi0gS2V2ZXIKPiAtLS0KPiAgIGNvbmZpZ3MvZXZiLXJrMzAzNl9kZWZjb25maWcgICAgICB8
IDIgLS0KPiAgIGNvbmZpZ3MvZXZiLXJrMzEyOF9kZWZjb25maWcgICAgICB8IDIgLS0KPiAgIGNv
bmZpZ3MvZXZiLXJrMzIyOV9kZWZjb25maWcgICAgICB8IDIgLS0KPiAgIGNvbmZpZ3MvZXZiLXJr
MzI4OF9kZWZjb25maWcgICAgICB8IDIgLS0KPiAgIGNvbmZpZ3MvZXZiLXJrMzMyOF9kZWZjb25m
aWcgICAgICB8IDIgLS0KPiAgIGNvbmZpZ3MvZmlyZWZseS1yazMyODhfZGVmY29uZmlnICB8IDIg
LS0KPiAgIGNvbmZpZ3Mva3lsaW4tcmszMDM2X2RlZmNvbmZpZyAgICB8IDIgLS0KPiAgIGNvbmZp
Z3MvbWlxaS1yazMyODhfZGVmY29uZmlnICAgICB8IDIgLS0KPiAgIGNvbmZpZ3MvcGh5Y29yZS1y
azMyODhfZGVmY29uZmlnICB8IDIgLS0KPiAgIGNvbmZpZ3MvcG9wbWV0YWwtcmszMjg4X2RlZmNv
bmZpZyB8IDIgLS0KPiAgIGNvbmZpZ3Mvcm9jazY0LXJrMzMyOF9kZWZjb25maWcgICB8IDIgLS0K
PiAgIGNvbmZpZ3MvdGlua2VyLXJrMzI4OF9kZWZjb25maWcgICB8IDIgLS0KPiAgIGNvbmZpZ3Mv
dGlua2VyLXMtcmszMjg4X2RlZmNvbmZpZyB8IDIgLS0KPiAgIGRyaXZlcnMvZmFzdGJvb3QvS2Nv
bmZpZyAgICAgICAgICB8IDQgKysrLQo+ICAgMTQgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAyNyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9jb25maWdzL2V2Yi1yazMwMzZf
ZGVmY29uZmlnIGIvY29uZmlncy9ldmItcmszMDM2X2RlZmNvbmZpZwo+IGluZGV4IDc5ZTQxMzE0
NWYuLjRiZWQyOGYxMDIgMTAwNjQ0Cj4gLS0tIGEvY29uZmlncy9ldmItcmszMDM2X2RlZmNvbmZp
Zwo+ICsrKyBiL2NvbmZpZ3MvZXZiLXJrMzAzNl9kZWZjb25maWcKPiBAQCAtMzUsOCArMzUsNiBA
QCBDT05GSUdfUkVHTUFQPXkKPiAgIENPTkZJR19TWVNDT049eQo+ICAgIyBDT05GSUdfU1BMX0JM
SyBpcyBub3Qgc2V0Cj4gICBDT05GSUdfQ0xLPXkKPiAtQ09ORklHX0ZBU1RCT09UX0ZMQVNIPXkK
PiAtQ09ORklHX0ZBU1RCT09UX0ZMQVNIX01NQ19ERVY9MAo+ICAgQ09ORklHX0ZBU1RCT09UX0NN
RF9PRU1fRk9STUFUPXkKPiAgIENPTkZJR19ST0NLQ0hJUF9HUElPPXkKPiAgIENPTkZJR19TWVNf
STJDX1JPQ0tDSElQPXkKPiBkaWZmIC0tZ2l0IGEvY29uZmlncy9ldmItcmszMTI4X2RlZmNvbmZp
ZyBiL2NvbmZpZ3MvZXZiLXJrMzEyOF9kZWZjb25maWcKPiBpbmRleCBjYjNjNTM3MmFhLi5iZjkx
YzY0MmRkIDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3MvZXZiLXJrMzEyOF9kZWZjb25maWcKPiArKysg
Yi9jb25maWdzL2V2Yi1yazMxMjhfZGVmY29uZmlnCj4gQEAgLTIzLDggKzIzLDYgQEAgQ09ORklH
X1NZU0NPTj15Cj4gICBDT05GSUdfQ0xLPXkKPiAgIENPTkZJR19GQVNUQk9PVF9CVUZfQUREUj0w
eDYwODAwODAwCj4gICBDT05GSUdfRkFTVEJPT1RfQlVGX1NJWkU9MHgwNDAwMDAwMAo+IC1DT05G
SUdfRkFTVEJPT1RfRkxBU0g9eQo+IC1DT05GSUdfRkFTVEJPT1RfRkxBU0hfTU1DX0RFVj0wCj4g
ICBDT05GSUdfRkFTVEJPT1RfQ01EX09FTV9GT1JNQVQ9eQo+ICAgQ09ORklHX1JPQ0tDSElQX0dQ
SU89eQo+ICAgQ09ORklHX1NZU19JMkNfUk9DS0NISVA9eQo+IGRpZmYgLS1naXQgYS9jb25maWdz
L2V2Yi1yazMyMjlfZGVmY29uZmlnIGIvY29uZmlncy9ldmItcmszMjI5X2RlZmNvbmZpZwo+IGlu
ZGV4IDhkN2QxMWMzZTguLmNkZjI4MTU0ZjggMTAwNjQ0Cj4gLS0tIGEvY29uZmlncy9ldmItcmsz
MjI5X2RlZmNvbmZpZwo+ICsrKyBiL2NvbmZpZ3MvZXZiLXJrMzIyOV9kZWZjb25maWcKPiBAQCAt
NDQsOCArNDQsNiBAQCBDT05GSUdfQ0xLPXkKPiAgIENPTkZJR19TUExfQ0xLPXkKPiAgIENPTkZJ
R19UUExfQ0xLPXkKPiAgIENPTkZJR19GQVNUQk9PVF9CVUZfU0laRT0weDA0MDAwMDAwCj4gLUNP
TkZJR19GQVNUQk9PVF9GTEFTSD15Cj4gLUNPTkZJR19GQVNUQk9PVF9GTEFTSF9NTUNfREVWPTAK
PiAgIENPTkZJR19GQVNUQk9PVF9DTURfT0VNX0ZPUk1BVD15Cj4gICBDT05GSUdfUk9DS0NISVBf
R1BJTz15Cj4gICBDT05GSUdfU1lTX0kyQ19ST0NLQ0hJUD15Cj4gZGlmZiAtLWdpdCBhL2NvbmZp
Z3MvZXZiLXJrMzI4OF9kZWZjb25maWcgYi9jb25maWdzL2V2Yi1yazMyODhfZGVmY29uZmlnCj4g
aW5kZXggZGI3ZTZmYTdiMS4uODMzYjBiNmE2ZCAxMDA2NDQKPiAtLS0gYS9jb25maWdzL2V2Yi1y
azMyODhfZGVmY29uZmlnCj4gKysrIGIvY29uZmlncy9ldmItcmszMjg4X2RlZmNvbmZpZwo+IEBA
IC00Myw4ICs0Myw2IEBAIENPTkZJR19TWVNDT049eQo+ICAgQ09ORklHX1NQTF9TWVNDT049eQo+
ICAgQ09ORklHX0NMSz15Cj4gICBDT05GSUdfU1BMX0NMSz15Cj4gLUNPTkZJR19GQVNUQk9PVF9G
TEFTSD15Cj4gLUNPTkZJR19GQVNUQk9PVF9GTEFTSF9NTUNfREVWPTAKPiAgIENPTkZJR19GQVNU
Qk9PVF9DTURfT0VNX0ZPUk1BVD15Cj4gICBDT05GSUdfUk9DS0NISVBfR1BJTz15Cj4gICBDT05G
SUdfU1lTX0kyQ19ST0NLQ0hJUD15Cj4gZGlmZiAtLWdpdCBhL2NvbmZpZ3MvZXZiLXJrMzMyOF9k
ZWZjb25maWcgYi9jb25maWdzL2V2Yi1yazMzMjhfZGVmY29uZmlnCj4gaW5kZXggMDI5MzU0NmIw
NC4uNzRiNzI5NWU2MiAxMDA2NDQKPiAtLS0gYS9jb25maWdzL2V2Yi1yazMzMjhfZGVmY29uZmln
Cj4gKysrIGIvY29uZmlncy9ldmItcmszMzI4X2RlZmNvbmZpZwo+IEBAIC00Niw4ICs0Niw2IEBA
IENPTkZJR19UUExfU1lTQ09OPXkKPiAgIENPTkZJR19DTEs9eQo+ICAgQ09ORklHX1NQTF9DTEs9
eQo+ICAgQ09ORklHX0ZBU1RCT09UX0JVRl9BRERSPTB4ODAwODAwCj4gLUNPTkZJR19GQVNUQk9P
VF9GTEFTSD15Cj4gLUNPTkZJR19GQVNUQk9PVF9GTEFTSF9NTUNfREVWPTEKPiAgIENPTkZJR19G
QVNUQk9PVF9DTURfT0VNX0ZPUk1BVD15Cj4gICBDT05GSUdfUk9DS0NISVBfR1BJTz15Cj4gICBD
T05GSUdfU1lTX0kyQ19ST0NLQ0hJUD15Cj4gZGlmZiAtLWdpdCBhL2NvbmZpZ3MvZmlyZWZseS1y
azMyODhfZGVmY29uZmlnIGIvY29uZmlncy9maXJlZmx5LXJrMzI4OF9kZWZjb25maWcKPiBpbmRl
eCA2ZWZjNTczNWY5Li4xNzgwMjljYzQ3IDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3MvZmlyZWZseS1y
azMyODhfZGVmY29uZmlnCj4gKysrIGIvY29uZmlncy9maXJlZmx5LXJrMzI4OF9kZWZjb25maWcK
PiBAQCAtNDQsOCArNDQsNiBAQCBDT05GSUdfU1BMX1NZU0NPTj15Cj4gICAjIENPTkZJR19TUExf
U0lNUExFX0JVUyBpcyBub3Qgc2V0Cj4gICBDT05GSUdfQ0xLPXkKPiAgIENPTkZJR19TUExfQ0xL
PXkKPiAtQ09ORklHX0ZBU1RCT09UX0ZMQVNIPXkKPiAtQ09ORklHX0ZBU1RCT09UX0ZMQVNIX01N
Q19ERVY9MAo+ICAgQ09ORklHX0ZBU1RCT09UX0NNRF9PRU1fRk9STUFUPXkKPiAgIENPTkZJR19S
T0NLQ0hJUF9HUElPPXkKPiAgIENPTkZJR19TWVNfSTJDX1JPQ0tDSElQPXkKPiBkaWZmIC0tZ2l0
IGEvY29uZmlncy9reWxpbi1yazMwMzZfZGVmY29uZmlnIGIvY29uZmlncy9reWxpbi1yazMwMzZf
ZGVmY29uZmlnCj4gaW5kZXggYzE2MDdlNTJmYi4uNmMxM2M0YzA4MCAxMDA2NDQKPiAtLS0gYS9j
b25maWdzL2t5bGluLXJrMzAzNl9kZWZjb25maWcKPiArKysgYi9jb25maWdzL2t5bGluLXJrMzAz
Nl9kZWZjb25maWcKPiBAQCAtMzcsOCArMzcsNiBAQCBDT05GSUdfUkVHTUFQPXkKPiAgIENPTkZJ
R19TWVNDT049eQo+ICAgIyBDT05GSUdfU1BMX0JMSyBpcyBub3Qgc2V0Cj4gICBDT05GSUdfQ0xL
PXkKPiAtQ09ORklHX0ZBU1RCT09UX0ZMQVNIPXkKPiAtQ09ORklHX0ZBU1RCT09UX0ZMQVNIX01N
Q19ERVY9MAo+ICAgQ09ORklHX0ZBU1RCT09UX0NNRF9PRU1fRk9STUFUPXkKPiAgIENPTkZJR19S
T0NLQ0hJUF9HUElPPXkKPiAgIENPTkZJR19TWVNfSTJDX1JPQ0tDSElQPXkKPiBkaWZmIC0tZ2l0
IGEvY29uZmlncy9taXFpLXJrMzI4OF9kZWZjb25maWcgYi9jb25maWdzL21pcWktcmszMjg4X2Rl
ZmNvbmZpZwo+IGluZGV4IDQ1OTBlMzhhZDMuLjQ4OGNjNTQyMDMgMTAwNjQ0Cj4gLS0tIGEvY29u
Zmlncy9taXFpLXJrMzI4OF9kZWZjb25maWcKPiArKysgYi9jb25maWdzL21pcWktcmszMjg4X2Rl
ZmNvbmZpZwo+IEBAIC00NSw4ICs0NSw2IEBAIENPTkZJR19TUExfU1lTQ09OPXkKPiAgICMgQ09O
RklHX1NQTF9TSU1QTEVfQlVTIGlzIG5vdCBzZXQKPiAgIENPTkZJR19DTEs9eQo+ICAgQ09ORklH
X1NQTF9DTEs9eQo+IC1DT05GSUdfRkFTVEJPT1RfRkxBU0g9eQo+IC1DT05GSUdfRkFTVEJPT1Rf
RkxBU0hfTU1DX0RFVj0wCj4gICBDT05GSUdfRkFTVEJPT1RfQ01EX09FTV9GT1JNQVQ9eQo+ICAg
Q09ORklHX1JPQ0tDSElQX0dQSU89eQo+ICAgQ09ORklHX1NZU19JMkNfUk9DS0NISVA9eQo+IGRp
ZmYgLS1naXQgYS9jb25maWdzL3BoeWNvcmUtcmszMjg4X2RlZmNvbmZpZyBiL2NvbmZpZ3MvcGh5
Y29yZS1yazMyODhfZGVmY29uZmlnCj4gaW5kZXggNTFiZDhhZGNiYy4uNzVkZTFkNjhlNSAxMDA2
NDQKPiAtLS0gYS9jb25maWdzL3BoeWNvcmUtcmszMjg4X2RlZmNvbmZpZwo+ICsrKyBiL2NvbmZp
Z3MvcGh5Y29yZS1yazMyODhfZGVmY29uZmlnCj4gQEAgLTQ3LDggKzQ3LDYgQEAgQ09ORklHX1NQ
TF9TWVNDT049eQo+ICAgIyBDT05GSUdfU1BMX1NJTVBMRV9CVVMgaXMgbm90IHNldAo+ICAgQ09O
RklHX0NMSz15Cj4gICBDT05GSUdfU1BMX0NMSz15Cj4gLUNPTkZJR19GQVNUQk9PVF9GTEFTSD15
Cj4gLUNPTkZJR19GQVNUQk9PVF9GTEFTSF9NTUNfREVWPTAKPiAgIENPTkZJR19GQVNUQk9PVF9D
TURfT0VNX0ZPUk1BVD15Cj4gICBDT05GSUdfUk9DS0NISVBfR1BJTz15Cj4gICBDT05GSUdfU1lT
X0kyQ19ST0NLQ0hJUD15Cj4gZGlmZiAtLWdpdCBhL2NvbmZpZ3MvcG9wbWV0YWwtcmszMjg4X2Rl
ZmNvbmZpZyBiL2NvbmZpZ3MvcG9wbWV0YWwtcmszMjg4X2RlZmNvbmZpZwo+IGluZGV4IDhjYzU1
YmRiZTAuLjMyMGYzNGJkMDQgMTAwNjQ0Cj4gLS0tIGEvY29uZmlncy9wb3BtZXRhbC1yazMyODhf
ZGVmY29uZmlnCj4gKysrIGIvY29uZmlncy9wb3BtZXRhbC1yazMyODhfZGVmY29uZmlnCj4gQEAg
LTQ1LDggKzQ1LDYgQEAgQ09ORklHX1NQTF9TWVNDT049eQo+ICAgIyBDT05GSUdfU1BMX1NJTVBM
RV9CVVMgaXMgbm90IHNldAo+ICAgQ09ORklHX0NMSz15Cj4gICBDT05GSUdfU1BMX0NMSz15Cj4g
LUNPTkZJR19GQVNUQk9PVF9GTEFTSD15Cj4gLUNPTkZJR19GQVNUQk9PVF9GTEFTSF9NTUNfREVW
PTAKPiAgIENPTkZJR19GQVNUQk9PVF9DTURfT0VNX0ZPUk1BVD15Cj4gICBDT05GSUdfUk9DS0NI
SVBfR1BJTz15Cj4gICBDT05GSUdfU1lTX0kyQ19ST0NLQ0hJUD15Cj4gZGlmZiAtLWdpdCBhL2Nv
bmZpZ3Mvcm9jazY0LXJrMzMyOF9kZWZjb25maWcgYi9jb25maWdzL3JvY2s2NC1yazMzMjhfZGVm
Y29uZmlnCj4gaW5kZXggMGRhYjVkN2U1NC4uNzNjYTUzNWZmOCAxMDA2NDQKPiAtLS0gYS9jb25m
aWdzL3JvY2s2NC1yazMzMjhfZGVmY29uZmlnCj4gKysrIGIvY29uZmlncy9yb2NrNjQtcmszMzI4
X2RlZmNvbmZpZwo+IEBAIC00OCw4ICs0OCw2IEBAIENPTkZJR19UUExfU1lTQ09OPXkKPiAgIENP
TkZJR19DTEs9eQo+ICAgQ09ORklHX1NQTF9DTEs9eQo+ICAgQ09ORklHX0ZBU1RCT09UX0JVRl9B
RERSPTB4ODAwODAwCj4gLUNPTkZJR19GQVNUQk9PVF9GTEFTSD15Cj4gLUNPTkZJR19GQVNUQk9P
VF9GTEFTSF9NTUNfREVWPTEKPiAgIENPTkZJR19GQVNUQk9PVF9DTURfT0VNX0ZPUk1BVD15Cj4g
ICBDT05GSUdfUk9DS0NISVBfR1BJTz15Cj4gICBDT05GSUdfU1lTX0kyQ19ST0NLQ0hJUD15Cj4g
ZGlmZiAtLWdpdCBhL2NvbmZpZ3MvdGlua2VyLXJrMzI4OF9kZWZjb25maWcgYi9jb25maWdzL3Rp
bmtlci1yazMyODhfZGVmY29uZmlnCj4gaW5kZXggYzM1MGMwZDhiYS4uNTZmY2JiOTRkMyAxMDA2
NDQKPiAtLS0gYS9jb25maWdzL3Rpbmtlci1yazMyODhfZGVmY29uZmlnCj4gKysrIGIvY29uZmln
cy90aW5rZXItcmszMjg4X2RlZmNvbmZpZwo+IEBAIC00Nyw4ICs0Nyw2IEBAIENPTkZJR19TUExf
U1lTQ09OPXkKPiAgICMgQ09ORklHX1NQTF9TSU1QTEVfQlVTIGlzIG5vdCBzZXQKPiAgIENPTkZJ
R19DTEs9eQo+ICAgQ09ORklHX1NQTF9DTEs9eQo+IC1DT05GSUdfRkFTVEJPT1RfRkxBU0g9eQo+
IC1DT05GSUdfRkFTVEJPT1RfRkxBU0hfTU1DX0RFVj0wCj4gICBDT05GSUdfRkFTVEJPT1RfQ01E
X09FTV9GT1JNQVQ9eQo+ICAgQ09ORklHX1JPQ0tDSElQX0dQSU89eQo+ICAgQ09ORklHX1NZU19J
MkNfUk9DS0NISVA9eQo+IGRpZmYgLS1naXQgYS9jb25maWdzL3Rpbmtlci1zLXJrMzI4OF9kZWZj
b25maWcgYi9jb25maWdzL3Rpbmtlci1zLXJrMzI4OF9kZWZjb25maWcKPiBpbmRleCBjMDE2YTI2
NGIyLi40NThlMTY5NWEyIDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3MvdGlua2VyLXMtcmszMjg4X2Rl
ZmNvbmZpZwo+ICsrKyBiL2NvbmZpZ3MvdGlua2VyLXMtcmszMjg4X2RlZmNvbmZpZwo+IEBAIC01
Miw4ICs1Miw2IEBAIENPTkZJR19TUExfU1lTQ09OPXkKPiAgICMgQ09ORklHX1NQTF9TSU1QTEVf
QlVTIGlzIG5vdCBzZXQKPiAgIENPTkZJR19DTEs9eQo+ICAgQ09ORklHX1NQTF9DTEs9eQo+IC1D
T05GSUdfRkFTVEJPT1RfRkxBU0g9eQo+IC1DT05GSUdfRkFTVEJPT1RfRkxBU0hfTU1DX0RFVj0w
Cj4gICBDT05GSUdfRkFTVEJPT1RfQ01EX09FTV9GT1JNQVQ9eQo+ICAgQ09ORklHX1JPQ0tDSElQ
X0dQSU89eQo+ICAgQ09ORklHX1NZU19JMkNfUk9DS0NISVA9eQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2Zhc3Rib290L0tjb25maWcgYi9kcml2ZXJzL2Zhc3Rib290L0tjb25maWcKPiBpbmRleCBk
NjNlY2RkMjdlLi4zNDg2NGNhNjEzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZmFzdGJvb3QvS2Nv
bmZpZwo+ICsrKyBiL2RyaXZlcnMvZmFzdGJvb3QvS2NvbmZpZwo+IEBAIC02NCw3ICs2NCw3IEBA
IGNvbmZpZyBGQVNUQk9PVF9VU0JfREVWCj4gICAKPiAgIGNvbmZpZyBGQVNUQk9PVF9GTEFTSAo+
ICAgCWJvb2wgIkVuYWJsZSBGQVNUQk9PVCBGTEFTSCBjb21tYW5kIgo+IC0JZGVmYXVsdCB5IGlm
IEFSQ0hfU1VOWEkKPiArCWRlZmF1bHQgeSBpZiBBUkNIX1NVTlhJIHx8IEFSQ0hfUk9DS0NISVAK
PiAgIAlkZXBlbmRzIG9uIE1NQyB8fCAoTkFORCAmJiBDTURfTVREUEFSVFMpCj4gICAJc2VsZWN0
IElNQUdFX1NQQVJTRQo+ICAgCWhlbHAKPiBAQCAtODksNiArODksOCBAQCBlbmRjaG9pY2UKPiAg
IGNvbmZpZyBGQVNUQk9PVF9GTEFTSF9NTUNfREVWCj4gICAJaW50ICJEZWZpbmUgRkFTVEJPT1Qg
TU1DIEZMQVNIIGRlZmF1bHQgZGV2aWNlIgo+ICAgCWRlcGVuZHMgb24gRkFTVEJPT1RfRkxBU0hf
TU1DCj4gKwlkZWZhdWx0IDEgaWYgUk9DS0NISVBfUkszMzI4Cj4gKwlkZWZhdWx0IDAgaWYgQVJD
SF9ST0NLQ0hJUAo+ICAgCWRlZmF1bHQgMCBpZiBBUkNIX1NVTlhJICYmIE1NQ19TVU5YSV9TTE9U
X0VYVFJBID0gLTEKPiAgIAlkZWZhdWx0IDEgaWYgQVJDSF9TVU5YSSAmJiBNTUNfU1VOWElfU0xP
VF9FWFRSQSAhPSAtMQo+ICAgCWhlbHAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
