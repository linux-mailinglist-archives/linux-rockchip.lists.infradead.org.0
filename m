Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139EA1F6AC9
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jun 2020 17:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6ufiFtUKD+kCJaiPwb9pNhF59l7eHQ8mCbuNhXUruZ8=; b=i97yyGwNN6Iv3N
	ab5EKyp6XlPqeyu2NCwQalpsQa1zlpzMmcK0w/eRrkAWAheoaQx5PuTiYmM5GnLTw1rmoXPsIsvN0
	Sk7Vus9T/n9VgYcCl2xUTo7eNxypPf0pz5if5jt4nEUxyLqA9G8y1DEMmSS+mZZtYzzmfPZJBEbuH
	wBqyaxGmbDF4iatV5ZJiytCoN9B+pKXcEoazdrZRW4dNfQFEYl63/QiklGB9LNdv1paoJh8PbOFXP
	GsPj6kpQqx28OvJ8fTFiWOlbaEq1cjSpYfBOa1OMfAP66Lwk0qNngOESss2eMX2h+VPPkjOX1HSWh
	J6DB5Kexd2uVPnyHzVRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOzR-0005KC-3R; Thu, 11 Jun 2020 15:19:37 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOzG-0005B3-N9; Thu, 11 Jun 2020 15:19:28 +0000
Received: by mail-il1-f195.google.com with SMTP id b5so5760134iln.5;
 Thu, 11 Jun 2020 08:19:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bzom5I0Qsx/lQuO9r3157DQxFx5Ipkb4zVlo1+AHki0=;
 b=T7tQqbPXuZKhn6/2YgME4GgWnl577X/8MJdLYhrHypPZqWmH+KxmlCN+cI3d7sStF6
 Y0TpHsUy4KVL1eCIjteNrKbvt3vBbqwO8tGsnUgxcFWCha6i181AelMSi+RTceRR52vU
 yW6lyVOBtZTc1/4TGUj91hls86ojoVUqC0Mby67wYYNxYJQLOlIjFKhYj5dX7wStsrW8
 gQPHAaeF3DL58l5XJPlV+4G10W1t1FgFZ5W91i0X7dEcXuNKarHZuJrG4lR7L+xl5KGF
 vr9/rCjCpbiIHqlP6narT1YcLpD5QbbA7vpgDOsd6ojeRsrT9ynRpu5RXa7nEJJ+0hOr
 zOcQ==
X-Gm-Message-State: AOAM531+oZsom1OQy7cZE7qRrUIBonQVLIncB4h7/vGqZ47F0sLlTOZf
 YpaEnc92gFT9PGx8JHVXrQ==
X-Google-Smtp-Source: ABdhPJzBBFxrtcbhqbQcEvm2dr7A3emRqSD+5s6FURtJq4Jy7T00ZrsFE/lLZJrZDfQS7fz2X4MsgA==
X-Received: by 2002:a05:6e02:e51:: with SMTP id
 l17mr8951200ilk.39.1591888764995; 
 Thu, 11 Jun 2020 08:19:24 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.251])
 by smtp.googlemail.com with ESMTPSA id c20sm1587533iot.33.2020.06.11.08.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 08:19:24 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: Fix more incorrect 'reg' property sizes in
 examples
Date: Thu, 11 Jun 2020 09:19:23 -0600
Message-Id: <20200611151923.1102796-1-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_081926_751167_A4A14E92 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: Kishon Vijay Abraham I <kishon@ti.com>, alsa-devel@alsa-project.org,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "David S. Miller" <davem@davemloft.net>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VGhlIGV4YW1wbGVzIHRlbXBsYXRlIGlzIGEgJ3NpbXBsZS1idXMnIHdpdGggYSBzaXplIG9mIDEg
Y2VsbCBmb3IKaGFkIGJldHdlZW4gMiBhbmQgNCBjZWxscyB3aGljaCByZWFsbHkgb25seSBlcnJv
cnMgb24gSTJDIG9yIFNQSSB0eXBlCmRldmljZXMgd2l0aCBhIHNpbmdsZSBjZWxsLgoKVGhlIGVh
c2llc3QgZml4IGluIG1vc3QgY2FzZXMgaXMgdG8gY2hhbmdlIHRoZSAncmVnJyBwcm9wZXJ0eSB0
byAxIGNlbGwKZm9yIGFkZHJlc3MgYW5kIHNpemUuCgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVp
a29Ac250ZWNoLmRlPgpDYzogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29t
PgpDYzogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiQGtlcm5lbC5vcmc+CkNjOiBQaGls
aXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgpDYzogTWlxdWVsIFJheW5hbCA8bWlx
dWVsLnJheW5hbEBib290bGluLmNvbT4KQ2M6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBu
b2QuYXQ+CkNjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KQ2M6IEJq
b3JuIEFuZGVyc3NvbiA8Ympvcm4uYW5kZXJzc29uQGxpbmFyby5vcmc+CkNjOiBLaXNob24gVmlq
YXkgQWJyYWhhbSBJIDxraXNob25AdGkuY29tPgpDYzogVmlub2QgS291bCA8dmtvdWxAa2VybmVs
Lm9yZz4KQ2M6IExpYW0gR2lyZHdvb2QgPGxnaXJkd29vZEBnbWFpbC5jb20+CkNjOiBNYXJrIEJy
b3duIDxicm9vbmllQGtlcm5lbC5vcmc+CkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LW10ZEBsaXN0
cy5pbmZyYWRlYWQub3JnCkNjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnCkNjOiBhbHNhLWRldmVs
QGFsc2EtcHJvamVjdC5vcmcKU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYnVzL2JhaWthbCxi
dDEtYXBiLnlhbWwgICAgIHwgNCArKy0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvYnVzL2JhaWthbCxidDEtYXhpLnlhbWwgICAgIHwgNCArKy0tCiAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcC55YW1sICAgIHwgNCArKy0tCiBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAsdmRlYy55YW1s
ICAgIHwgMiArLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tj
aGlwLXZwdS55YW1sICAgICB8IDIgKy0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9hcmFz
YW4sbmFuZC1jb250cm9sbGVyLnlhbWwgICAgICAgfCAyICstCiBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L3RpLGszLWFtNjU0LWNwdHMueWFtbCAgIHwgMiArLQogLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNucHMtZmVtdG8tdjIueWFtbCAgICAgICB8
IDIgKy0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9mc2wsZWFzcmMu
eWFtbCAgICAgICAgfCAyICstCiA5IGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9idXMvYmFpa2FsLGJ0MS1hcGIueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9idXMvYmFpa2FsLGJ0MS1hcGIueWFtbAppbmRleCBkNmEzYjcxZWE4MzUuLjY4YjAx
MzFhMzFkMCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2J1
cy9iYWlrYWwsYnQxLWFwYi55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9idXMvYmFpa2FsLGJ0MS1hcGIueWFtbApAQCAtNzEsOCArNzEsOCBAQCBleGFtcGxlczoK
IAogICAgIGJ1c0AxZjA1OTAwMCB7CiAgICAgICBjb21wYXRpYmxlID0gImJhaWthbCxidDEtYXBi
IiwgInNpbXBsZS1idXMiOwotICAgICAgcmVnID0gPDAgMHgxZjA1OTAwMCAwIDB4MTAwMD4sCi0g
ICAgICAgICAgICA8MCAweDFkMDAwMDAwIDAgMHgyMDQwMDAwPjsKKyAgICAgIHJlZyA9IDwweDFm
MDU5MDAwIDB4MTAwMD4sCisgICAgICAgICAgICA8MHgxZDAwMDAwMCAweDIwNDAwMDA+OwogICAg
ICAgcmVnLW5hbWVzID0gImVoYiIsICJub2RldiI7CiAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwx
PjsKICAgICAgICNzaXplLWNlbGxzID0gPDE+OwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2J1cy9iYWlrYWwsYnQxLWF4aS55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2J1cy9iYWlrYWwsYnQxLWF4aS55YW1sCmluZGV4IDIwM2Jj
MGU1MzQ2Yi4uMjllMWFhZWExMzJiIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYnVzL2JhaWthbCxidDEtYXhpLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2J1cy9iYWlrYWwsYnQxLWF4aS55YW1sCkBAIC04NSw4ICs4NSw4
IEBAIGV4YW1wbGVzOgogCiAgICAgYnVzQDFmMDVhMDAwIHsKICAgICAgIGNvbXBhdGlibGUgPSAi
YmFpa2FsLGJ0MS1heGkiLCAic2ltcGxlLWJ1cyI7Ci0gICAgICByZWcgPSA8MCAweDFmMDVhMDAw
IDAgMHgxMDAwPiwKLSAgICAgICAgICAgIDwwIDB4MWYwNGQxMTAgMCAweDg+OworICAgICAgcmVn
ID0gPDB4MWYwNWEwMDAgMHgxMDAwPiwKKyAgICAgICAgICAgIDwweDFmMDRkMTEwIDB4OD47CiAg
ICAgICByZWctbmFtZXMgPSAicW9zIiwgImVoYiI7CiAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwx
PjsKICAgICAgICNzaXplLWNlbGxzID0gPDE+OwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wLnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hp
cC12b3AueWFtbAppbmRleCAxNjk1ZTNlNGJjZWMuLmVkODE0OGUyNmUyNCAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2No
aXAtdm9wLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wLnlhbWwKQEAgLTEwNiw4ICsxMDYsOCBAQCBleGFtcGxl
czoKICAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvcmszMjg4LXBvd2VyLmg+CiAgICAg
dm9wYjogdm9wYkBmZjkzMDAwMCB7CiAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzI4
OC12b3AiOwotICAgICAgcmVnID0gPDB4MCAweGZmOTMwMDAwIDB4MCAweDE5Yz4sCi0gICAgICAg
ICAgICA8MHgwIDB4ZmY5MzEwMDAgMHgwIDB4MTAwMD47CisgICAgICByZWcgPSA8MHhmZjkzMDAw
MCAweDE5Yz4sCisgICAgICAgICAgICA8MHhmZjkzMTAwMCAweDEwMDA+OwogICAgICAgaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDE1IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogICAgICAgY2xvY2tzID0g
PCZjcnUgQUNMS19WT1AwPiwKICAgICAgICAgICAgICAgIDwmY3J1IERDTEtfVk9QMD4sCmRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAs
dmRlYy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tj
aGlwLHZkZWMueWFtbAppbmRleCAwYzY4Y2RhZDlhMzEuLjhkMzVjMzI3MDE4YiAxMDA2NDQKLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLHZkZWMu
eWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2No
aXAsdmRlYy55YW1sCkBAIC02MSw3ICs2MSw3IEBAIGV4YW1wbGVzOgogCiAgICAgdmRlYzogdmlk
ZW8tY29kZWNAZmY2NjAwMDAgewogICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5
OS12ZGVjIjsKLSAgICAgICAgcmVnID0gPDB4MCAweGZmNjYwMDAwIDB4MCAweDQwMD47CisgICAg
ICAgIHJlZyA9IDwweGZmNjYwMDAwIDB4NDAwPjsKICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNf
U1BJIDExNiBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+OwogICAgICAgICBjbG9ja3MgPSA8JmNydSBB
Q0xLX1ZEVT4sIDwmY3J1IEhDTEtfVkRVPiwKICAgICAgICAgICAgICAgICAgPCZjcnUgU0NMS19W
RFVfQ0E+LCA8JmNydSBTQ0xLX1ZEVV9DT1JFPjsKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC12cHUueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC12cHUueWFtbAppbmRleCAyN2Rm
MThhZDZhODEuLjJiNjI5NDU2ZDc1ZiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLXZwdS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC12cHUueWFtbApAQCAtNjYsNyArNjYs
NyBAQCBleGFtcGxlczoKIAogICAgICAgICB2cHU6IHZpZGVvLWNvZGVjQGZmOWEwMDAwIHsKICAg
ICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzI4OC12cHUiOwotICAgICAg
ICAgICAgICAgIHJlZyA9IDwweDAgMHhmZjlhMDAwMCAweDAgMHg4MDA+OworICAgICAgICAgICAg
ICAgIHJlZyA9IDwweGZmOWEwMDAwIDB4ODAwPjsKICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRz
ID0gPEdJQ19TUEkgOSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPEdJQ19TUEkgMTAgSVJRX1RZUEVfTEVWRUxfSElHSD47CiAgICAgICAgICAgICAg
ICAgaW50ZXJydXB0LW5hbWVzID0gInZlcHUiLCAidmRwdSI7CmRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2FyYXNhbixuYW5kLWNvbnRyb2xsZXIueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvYXJhc2FuLG5hbmQtY29u
dHJvbGxlci55YW1sCmluZGV4IGRiOGYxMTVhMTNlYy4uY2I5Nzk0ZWRmZjI0IDEwMDY0NAotLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2FyYXNhbixuYW5kLWNvbnRy
b2xsZXIueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2Fy
YXNhbixuYW5kLWNvbnRyb2xsZXIueWFtbApAQCAtNTMsNyArNTMsNyBAQCBleGFtcGxlczoKICAg
LSB8CiAgICAgbmZjOiBuYW5kLWNvbnRyb2xsZXJAZmYxMDAwMDAgewogICAgICAgICBjb21wYXRp
YmxlID0gInhsbngsenlucW1wLW5hbmQtY29udHJvbGxlciIsICJhcmFzYW4sbmZjLXYzcDEwIjsK
LSAgICAgICAgcmVnID0gPDB4MCAweGZmMTAwMDAwIDB4MCAweDEwMDA+OworICAgICAgICByZWcg
PSA8MHhmZjEwMDAwMCAweDEwMDA+OwogICAgICAgICBjbG9jay1uYW1lcyA9ICJjb250cm9sbGVy
IiwgImJ1cyI7CiAgICAgICAgIGNsb2NrcyA9IDwmY2xrMjAwPiwgPCZjbGsxMDA+OwogICAgICAg
ICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+OwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC90aSxrMy1hbTY1NC1jcHRzLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3RpLGszLWFtNjU0LWNwdHMueWFtbAppbmRleCBh
ZjYwOGYyZWNmZGYuLjliNzExNzkyMGQ5MCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL25ldC90aSxrMy1hbTY1NC1jcHRzLnlhbWwKKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC90aSxrMy1hbTY1NC1jcHRzLnlhbWwKQEAgLTEy
MSw3ICsxMjEsNyBAQCBleGFtcGxlczoKIAogICAgIGNwdHNAMzEwZDAwMDAgewogICAgICAgICAg
Y29tcGF0aWJsZSA9ICJ0aSxhbTY1LWNwdHMiOwotICAgICAgICAgcmVnID0gPDB4MCAweDMxMGQw
MDAwIDB4MCAweDQwMD47CisgICAgICAgICByZWcgPSA8MHgzMTBkMDAwMCAweDQwMD47CiAgICAg
ICAgICByZWctbmFtZXMgPSAiY3B0cyI7CiAgICAgICAgICBjbG9ja3MgPSA8Jm1haW5fY3B0c19t
dXg+OwogICAgICAgICAgY2xvY2stbmFtZXMgPSAiY3B0cyI7CmRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNucHMtZmVtdG8tdjIueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx1c2Itc25wcy1m
ZW10by12Mi55YW1sCmluZGV4IDU3NGY4OTBmYWIxZC4uNDk0OWEyODUxNTMyIDEwMDY0NAotLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNucHMtZmVt
dG8tdjIueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fj
b20sdXNiLXNucHMtZmVtdG8tdjIueWFtbApAQCAtNjUsNyArNjUsNyBAQCBleGFtcGxlczoKICAg
ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcWNvbSxnY2Mtc204MTUwLmg+CiAgICAgcGh5
QDg4ZTIwMDAgewogICAgICAgICBjb21wYXRpYmxlID0gInFjb20sc204MTUwLXVzYi1ocy1waHki
OwotICAgICAgICByZWcgPSA8MCAweDA4OGUyMDAwIDAgMHg0MDA+OworICAgICAgICByZWcgPSA8
MHgwODhlMjAwMCAweDQwMD47CiAgICAgICAgICNwaHktY2VsbHMgPSA8MD47CiAKICAgICAgICAg
Y2xvY2tzID0gPCZycG1oY2MgUlBNSF9DWE9fQ0xLPjsKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9mc2wsZWFzcmMueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9mc2wsZWFzcmMueWFtbAppbmRleCA5ZGQ1N2E5
NzRiMjguLjMyZDU0N2FmOWNlNyAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3NvdW5kL2ZzbCxlYXNyYy55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9zb3VuZC9mc2wsZWFzcmMueWFtbApAQCAtODAsNyArODAsNyBAQCBleGFt
cGxlczoKIAogICAgIGVhc3JjOiBlYXNyY0AzMDBjMDAwMCB7CiAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAiZnNsLGlteDhtbi1lYXNyYyI7Ci0gICAgICAgICAgIHJlZyA9IDwweDAgMHgzMDBjMDAw
MCAweDAgMHgxMDAwMD47CisgICAgICAgICAgIHJlZyA9IDwweDMwMGMwMDAwIDB4MTAwMDA+Owog
ICAgICAgICAgICBpbnRlcnJ1cHRzID0gPDB4MCAxMjIgMHg0PjsKICAgICAgICAgICAgY2xvY2tz
ID0gPCZjbGsgSU1YOE1OX0NMS19BU1JDX1JPT1Q+OwogICAgICAgICAgICBjbG9jay1uYW1lcyA9
ICJtZW0iOwotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
