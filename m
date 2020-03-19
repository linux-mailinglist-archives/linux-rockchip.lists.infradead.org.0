Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2C418AB01
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Mar 2020 04:11:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iktPapwRh25NQKqDoZ6vdek3SmhoJ+DN9YvePrsEIV8=; b=AXLrqV1+2TP/jIIipH0PwS0XW
	Kwq9tjq7VCSqyguPtBJukLQNYubZK50xc56OR8Hcjty1rKcrUKCrAfnWal/RNS6cpCiE6T6vGUG8X
	sJ3rZU3ND8Oj+hmHuC57dEzR3oQ3vuPhaA08/SXkRLw+GFjqemkyTMH37PyRGea1g/tmh+GVk9C4Q
	uHqIxITMGxjZLmR35mVvBTDSNk5bpU8ms3uUAWkQy1HF9nbKBeKhtRDG0AwAxZlFH0TXapnn/Uo+I
	/dpLHb1assqETvrizmIrWMu9gZdoJwLiJETOEqaNt1NALjVnUxCJfP8uaIgUmXF1V59qguntQRup7
	1r2qkwHGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jElb7-0002sY-Gn; Thu, 19 Mar 2020 03:11:53 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jElb2-0002r4-SB
 for linux-rockchip@lists.infradead.org; Thu, 19 Mar 2020 03:11:51 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id 596EB8EBA9;
 Thu, 19 Mar 2020 11:11:31 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.37] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P20067T140595444037376S1584587490013192_; 
 Thu, 19 Mar 2020 11:11:30 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0078fd1245032f134969b4d597bf7f7b>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_PROBLEM=3a_mmc=5fselect=5fhs400es_failed=2c_error_-?=
 =?UTF-8?B?MTEw44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtbW1jLW93bmVyQHZnZXIu?=
 =?UTF-8?B?a2VybmVsLm9yZ+S7o+WPkeOAkQ==?=
To: =?UTF-8?Q?Milan_P=2e_Stani=c4=87?= <mps@arvanta.net>
References: <20200301220242.GA8276@arya.arvanta.net>
 <20200318214917.GA9112@arya.arvanta.net>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <5922bbd7-e91b-d144-6d44-2632cbd11c78@rock-chips.com>
Date: Thu, 19 Mar 2020 11:11:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101
 Thunderbird/75.0
MIME-Version: 1.0
In-Reply-To: <20200318214917.GA9112@arya.arvanta.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_201149_290171_3A9DA303 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgTWlsYW4KClsrbGludXgtcm9ja2NoaXAgdG8gc2VlIGlmIHNvbWVvbmUgaGFzIGEgU2Ftc3Vu
ZyBjaHJvbWVib29rIG9uZSBwbHVzCmFuZCBjb3VsZCBjb25maXJtIGlmIGl0IHdvcmtzXQoKT24g
MjAyMC8zLzE5IDU6NDksIE1pbGFuIFAuIFN0YW5pxIcgd3JvdGU6Cj4gSGVsbG8sCj4gCj4gU29y
cnkgdG8gYW5ub3kgYWdhaW4sIGJ1dCBjb3VsZCB5b3UgdGVsbCBtZSBpZiBJIHNlbnQgdGhpcyBi
dWcgcmVwb3J0Cj4gdG8gcmlnaHQgbWFpbCBhZGRyZXNzIG9yIEkgc2hvdWxkIHNlbmQgaXQgc29t
ZXdoZXJlIGVsc2UuCj4gCj4gQWxzbywgZGlkIEkgc2VudCBidWcgcmVwb3J0IGNvcnJlY3RseSBv
ciBJIGRpZCBzb21lIG1pc3Rha2VzIHdoaWNoCj4gY2F1c2VkIGl0IHRvIGJlIGlnbm9yZWQuCj4g
Cj4gLS0gVElBIE9uIFN1biwgMjAyMC0wMy0wMSBhdCAyMzowMiwgTWlsYW4gUC4gU3RhbmnEhyB3
cm90ZToKPj4gSGVsbG8sCj4+Cj4+IEknbSBub3QgbmF0aXZlIEVuZ2xpc2ggc3BlYWtlciBhbmQg
SSdtIHNlbGYgdGF1Z2h0IGluIEVuZ2xpc2ggc28gc29ycnkKPj4gaWYgZG8gbm90IHdyaXRlIG9y
IGV4cHJlc3MgY29ycmVjdGx5LiBBbmQgc29ycnkgaWYgSSBwb3N0ZWQgYnVnIHJlcG9ydAo+PiB0
byB3cm9uZyBhZGRyZXNzLgo+Pgo+PiBJJ20gcnVubmluZyBsaW51eCA1LjYuMC1yYzMgd2l0aG91
dCBhbnkgcGF0Y2hlcyBvbiBTYW1zdW5nIGNocm9tZWJvb2sKPj4gb25lIHBsdXMsIEFybTY0IHJv
Y2tjaGlwIHJrMzM5OSBiYXNlZCBtb2RlbCBuYW1lOgo+PiBNYWNoaW5lIG1vZGVsOiBHb29nbGUg
S2V2aW4KPj4KPj4gSSBidWlsZCBrZXJuZWxzIGZyb20gdXBzdHJlYW0gZ2l0Lmtlcm5lbC5vcmcg
Zm9yIHRoaXMgbWFjaGluZSBmb3Igc29tZQo+PiB0aW1lIChpaXJjLCBmcm9tIDUuMi4xIGFuZCB1
cCkgYnV0IEknbSBnZXR0aW5nIGVycm9yIG1lc3NhZ2VzIGluIGtlcm5lbAo+PiBhZnRlciBtYWNo
aW5lIHJlc3VtZXMgZnJvbSBzdXNwZW5kLXRvLXJhbS4KCkl0IHNvdW5kcyB0byBtZSBzdXNwZW5k
LXRvLXJhbSBuZXZlciB3b3JrcyBmb3IgdGhpcyBtYWNoaW5lLCBhdCBsZWFzdApzaW5jZSA1LjIu
MS4gQW0gSSByaWdodD8KCj4+Cj4+IGV4Y2VycHQgZnJvbSBkbWVzZyBvdXRwdXQ6Cj4+IC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4+IFJlc3RhcnRpbmcgdGFza3MgLi4uIGRvbmUuCj4+IFBNOiBzdXNwZW5kIGV4
aXQKPj4gbW1jX2hvc3QgbW1jMDogQnVzIHNwZWVkIChzbG90IDApID0gNDAwMDAwSHogKHNsb3Qg
cmVxIDQwMDAwMEh6LCBhY3R1YWwgNDAwMDAwSFogZGl2ID0gMCkKPj4gbW1jMTogbW1jX3NlbGVj
dF9oczQwMGVzIGZhaWxlZCwgZXJyb3IgLTExMAo+PiBtbWMxOiBlcnJvciAtMTEwIGRvaW5nIHJ1
bnRpbWUgcmVzdW1lCj4+IG1tYzE6IEdvdCBkYXRhIGludGVycnVwdCAweDAwMDAwMDAyIGV2ZW4g
dGhvdWdoIG5vIGRhdGEgb3BlcmF0aW9uIHdhcyBpbiBwcm9ncmVzcy4KPj4gbW1jMTogc2RoY2k6
ID09PT09PT09PT09PSBTREhDSSBSRUdJU1RFUiBEVU1QID09PT09PT09PT09Cj4+IG1tYzE6IHNk
aGNpOiBTeXMgYWRkcjogIDB4MDAwMDAwMDggfCBWZXJzaW9uOiAgMHgwMDAwMTAwMgo+PiBtbWMx
OiBzZGhjaTogQmxrIHNpemU6ICAweDAwMDA3MjAwIHwgQmxrIGNudDogIDB4MDAwMDAwMDgKPj4g
bW1jMTogc2RoY2k6IEFyZ3VtZW50OiAgMHgwMDAwMDAwMCB8IFRybiBtb2RlOiAweDAwMDAwMDIz
Cj4+IG1tYzE6IHNkaGNpOiBQcmVzZW50OiAgIDB4MWZmZjAwMDEgfCBIb3N0IGN0bDogMHgwMDAw
MDAzNQo+PiBtbWMxOiBzZGhjaTogUG93ZXI6ICAgICAweDAwMDAwMDBiIHwgQmxrIGdhcDogIDB4
MDAwMDAwODAKPj4gbW1jMTogc2RoY2k6IFdha2UtdXA6ICAgMHgwMDAwMDAwMCB8IENsb2NrOiAg
ICAweDAwMDBiYzA3Cj4+IG1tYzE6IHNkaGNpOiBUaW1lb3V0OiAgIDB4MDAwMDAwMGQgfCBJbnQg
c3RhdDogMHgwMDAwMDAwMAo+PiBtbWMxOiBzZGhjaTogSW50IGVuYWI6ICAweDAzZmYwMDBiIHwg
U2lnIGVuYWI6IDB4MDNmZjAwMGIKPj4gbW1jMTogc2RoY2k6IEFDbWQgc3RhdDogMHgwMDAwMDAw
MCB8IFNsb3QgaW50OiAweDAwMDAwMDAwCj4+IG1tYzE6IHNkaGNpOiBDYXBzOiAgICAgIDB4NDRl
ZGM4ODAgfCBDYXBzXzE6ICAgMHg4MDEwMjBmNwo+PiBtbWMxOiBzZGhjaTogQ21kOiAgICAgICAw
eDAwMDAwYzFhIHwgTWF4IGN1cnI6IDB4MDAwMDAwMDAKPj4gbW1jMTogc2RoY2k6IFJlc3BbMF06
ICAgMHgwMDAwMDAwMCB8IFJlc3BbMV06ICAweDM3MzMwMGJkCj4+IG1tYzE6IHNkaGNpOiBSZXNw
WzJdOiAgIDB4MzUzMDMwMzAgfCBSZXNwWzNdOiAgMHgwMDAwMDAwMAo+PiBtbWMxOiBzZGhjaTog
SG9zdCBjdGwyOiAweDAwMDAwMDAwCj4+IG1tYzE6IHNkaGNpOiBBRE1BIEVycjogIDB4MDAwMDAw
MDAgfCBBRE1BIFB0cjogMHhlZDQxZTIwMAo+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pgo+PiBJIGludm9r
ZSBzdXNwZW5kLXRvLXJhbSBieSBgZWNobyBtZW0gPiAvc3lzL3Bvd2VyL3N0YXRlYCBmcm9tIEFD
UEkgcG93ZXIKPj4gYW5kIExJRCBidXR0b24gaGFuZGxlcnMuCj4+Cj4+IFRoaXMgb25seSBoYXBw
ZW5zIHdoZW4gSSBib290IGFuZCB1c2UgaW50ZXJuYWwgZW1tYyBjYXJkIGFuZCBuZXZlciB3aGVu
Cj4+IGJvb3QgYW5kIHVzZSBleHRlcm5hbCBtbWMgY2FyZC4KPj4KPj4gSWYgc3VzcGVuZC10by1y
YW0gaXMgbm90IGludm9rZWQgKG1hY2hpbmUgaXMgYWx3YXlzIGluIG5vcm1hbCBzdGF0ZSkKPj4g
dGhpcyBwcm9ibGVtIG5ldmVyIGhhcHBlbiAob3IgSSBtaXNzZWQgaXQgc29tZWhvdykuCj4+Cj4+
IEknbSBhdHRhY2hpbmcga2VybmVsIC5jb25maWcgKGZpbGUgY29uZmlnLTUuNi4wLXJjMy0xLWdy
dS5jb25mKSB3aGljaAo+PiB1c2UgdG8gYnVpbGQga2VybmVsLCBvdXRwdXQgb2YgdGhlIGBhd2sg
LWYgc2NyaXB0cy92ZXJfbGludXhgIGFzIGZpbGUKPj4gdmVyX2xpbnV4LnR4dCBhbmQgIG91dHB1
dCBvZiBkbWVzZyBhcyBmaWxlIG1tYy1lcnIudHh0IChmcm9tIHdoaWNoIEkKPj4gZGVsZXRlZCB3
aWZpIGNvbm5lY3Rpb24gbG9ncykuCj4+Cj4+IFNvcnJ5IGlmIEkgZGlkIHNvbWV0aGluZyBiYWQg
b3Igd3Jvbmcgd2l0aCB0aGlzIGJ1ZyByZXBvcnQsIEkgZG9uJ3QgaGF2ZQo+PiBtdWNoIGV4cGVy
aWVuY2Ugd2l0aCBidWcgcmVwb3J0aW5nLCBlc3BlY2lhbGx5IGZvciBrZXJuZWwuCj4+Cj4+IEkn
bSByZWFkeSB0byBzZW5kIHlvdSBtb3JlIGRhdGEsIGFuZCBpbnZlc3RpZ2F0ZSB0aGlzIG1vcmUs
IGFwcGx5Cj4+IHBhdGNoZXMgYW5kIHJlYnVpbGQga2VybmVsIG9yIHdoYXRldmVyIHlvdSBhc2sg
bWUgKG9mIGNvdXJzZSBpZiBteQo+PiB1bmRlcnN0YW5kaW5nIGFuZCBrbm93bGVkZ2UgaXMgZW5v
dWdoIGZvciB0aGlzIGpvYikuCj4+Cj4+IFRoYW5rIGluIGFkdmFuY2UKPj4KPj4gLS0KPj4gS2lu
ZCByZWdhcmRzCj4+Cj4gWy4uLl0KPiAKPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
