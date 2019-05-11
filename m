Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566341A9C3
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 May 2019 01:17:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ds4GXFCqrNbmGi4Z7JuRB7jXcsoFOrixiqtV1DKiET0=; b=Srf5Pe2/V3nCZZouuwpRgPFfQM
	jiG5Nco9ojPgG4VutBhN8s+Pb0iNSZA8Py+305rfYEwaWD91QAUZUJWIbN3puqZKfBrnIrKlbSrhU
	mUk44WbzohAo35FY4z8Tjw2qaHG2LVGNzfb8tNqHt3gsxhfLMcuUIMEzq7pfv63A0Ym+ruJX16ur6
	hCrg+n+SvRLXfl3dFcRgv86KpBF/H1M2MIONIrth8vm9WuoxYbaKyBN3ZsoP3jXbZDn1VS0EsGhDc
	eFZBs54VmMaYvFwVT4k33qB+Ee0JHYoa86DdTbWf3d9yzW/q0n1lZkZMHVlQaR7rWXsF0fx1l/bDF
	7c7cESHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPbEy-00019k-Kt; Sat, 11 May 2019 23:17:16 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPbEu-00019L-Gl
 for linux-rockchip@lists.infradead.org; Sat, 11 May 2019 23:17:14 +0000
Received: by mail-qt1-x832.google.com with SMTP id a39so10015335qtk.2
 for <linux-rockchip@lists.infradead.org>; Sat, 11 May 2019 16:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=vCXdwp9yh3By/kCj/5erJ6oXJXVyhgvtgkRt+CmPDAs=;
 b=Dn0Nu3VqM4Y3kLuDh67i6FpWOrBtzVcmQulPRB7RBTFACdMUVQgj8E/rJpIhv/B9Gh
 KUPWcgvxganghv+TzqGlMBc3TSoK39SPrm8rXrf1nA9yBJZlPlWMeGGvcDdCJpp1xDMy
 8hBE3gD0XtjuzK0UVpOnLJFCI0HRScoDBTrNeeUP0BLblzZj38nKAkp590ZfJJmF81/e
 Ti61JTqCrZMuTu4pwvBVkeXv+XJ96jLcEXhvXxmMEq80QsNqvxY1ZI/ix58i1XH+YdJ/
 Y19srbW/y2eaBj+E4F/UeYvkFiD6fw3KzxJX/rNP8xeCM6EqUoLGs7U3MUbN24ge9NDb
 XoIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=vCXdwp9yh3By/kCj/5erJ6oXJXVyhgvtgkRt+CmPDAs=;
 b=IAEiWM5wXuugtm0KVIzV0MTlHTKdS+wqaJy0Q+LaqpZv2Nygpu2VtrYUJIL3d39+K7
 ZJ0GnXIG0RtZO4cs6dKZQ1Bla6PlmpftRSAUwaFVNdoBeHJQU3K0tSkKsbCgnPNVYtbY
 nDe5gOe2vKSWVYQ/V6wqfe+gq50wlfeNHo7f5VWX82FxJoeqN3hMDkrS/ClKAVeqNEEI
 Z72jsLvpJksNBS3lla5WcrblGfNnYDAfygDHvWqmhbwiVhY4GZcuU0yxi8eQFzF58c4W
 UT62Oi1o+Hh67X9mGHqQyXH7IErRDDyVsDBret/gknXvcbY84VBEJVtmT1orWIu9WpUk
 wyDw==
X-Gm-Message-State: APjAAAWaDLMW2bh0s5NcpUKG0xXwUnhF5tPFz6qITGC44XwKoeIhpEQV
 QyWAkMq9WShYVo87Qq8puxxQgRjxRDw=
X-Google-Smtp-Source: APXvYqxQe4Et4h1sohcpGFr47FYqd1E9ODeE7aIPOPWK5YBECGzk0Cla9q6zDtfJrN+n15g7mxPYMA==
X-Received: by 2002:ac8:641:: with SMTP id e1mr16602358qth.76.1557616630479;
 Sat, 11 May 2019 16:17:10 -0700 (PDT)
Received: from ?IPv6:2601:153:900:ebb:b5f3:c6ee:317b:8b7e?
 ([2601:153:900:ebb:b5f3:c6ee:317b:8b7e])
 by smtp.gmail.com with ESMTPSA id e3sm5861782qkn.93.2019.05.11.16.17.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 16:17:09 -0700 (PDT)
To: Serge Semin <fancer.lancer@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Subject: [Regression] "net: phy: realtek: Add rtl8211e rx/tx delays config"
 breaks rk3328-roc-cc networking
Message-ID: <066a0d38-2c64-7a1e-d176-04341f0cb6d7@gmail.com>
Date: Sat, 11 May 2019 19:17:08 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_161712_589281_00F3C9B4 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:832 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Serge Semin <Sergey.Semin@t-platforms.ru>, netdev@vger.kernel.org,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Good Evening,

Commit f81dadbcf7fd067baf184b63c179fc392bdb226e "net: phy: realtek: Add 
rtl8211e rx/tx delays config" breaks networking completely on the 
rk3328-roc-cc.
Reverting the offending commit solves the problem.

The following error occurs:

[   49.442425] Unable to handle kernel execution of user memory at 
virtual address 0000000000000000
[   49.443237] Mem abort info:
[   49.443512]   ESR = 0x86000005
[   49.443798]   Exception class = IABT (current EL), IL = 32 bits
[   49.444331]   SET = 0, FnV = 0
[   49.444613]   EA = 0, S1PTW = 0
[   49.444914] user pgtable: 64k pages, 48-bit VAs, pgdp = 000000008f8d6f90
[   49.445516] [0000000000000000] pgd=0000000000000000, pud=0000000000000000
[   49.446136] Internal error: Oops: 86000005 [#1] PREEMPT SMP
[   49.446641] Modules linked in: snd_soc_hdmi_codec dw_hdmi_i2s_audio 
aes_ce_blk crypto_simd aes_ce_cipher crct10dif_ce ghash_ce aes_arm64 
sha2_ce rockchipdrm sha256_arm64 sha1_ce dw_hdmi lima drm_kms_helper 
gpu_sched pwm_fan snd_soc_simple_card snd_soc_simple_card_utils drm 
snd_soc_rockchip_i2s drm_panel_orientation_quirks snd_soc_rockchip_pcm 
squashfs sch_fq_codel ip_tables x_tables ipv6 crc_ccitt btrfs xor 
xor_neon zstd_compress raid6_pq libcrc32c zstd_decompress rtc_rk808 realtek
[   49.450477] Process NetworkManager (pid: 1814, stack limit = 
0x00000000cc8e3ffb)
[   49.451150] CPU: 2 PID: 1814 Comm: NetworkManager Not tainted 
5.1.0-next-20190510test-00009-g3ed182aaa670 #51
[   49.452036] Hardware name: Firefly roc-rk3328-cc (DT)
[   49.452496] pstate: 80400005 (Nzcv daif +PAN -UAO)
[   49.452938] pc : 0x0
[   49.453158] lr : phy_select_page+0x34/0x78
[   49.453532] sp : ffff0000139cf130
[   49.453841] x29: ffff0000139cf130 x28: ffff80000c9908c0
[   49.454326] x27: ffff800000ba1e10 x26: ffff0000139cf9a0
[   49.454806] x25: ffff80000034a000 x24: 0000000000000000
[   49.455285] x23: 0000000000000000 x22: 0000000000000008
[   49.455762] x21: 0000000000000007 x20: ffff800000344800
[   49.456245] x19: ffff800000344800 x18: 0000000000000030
[   49.456726] x17: 0000000000000000 x16: 0000000000000000
[   49.457207] x15: ffffffffffffffff x14: ffff000010f03688
[   49.457688] x13: 000000cce415c000 x12: 0000000000000001
[   49.458167] x11: 0000000000000000 x10: 00000000000004e5
[   49.458647] x9 : 000000000b94d076 x8 : 00000000000000cc
[   49.459130] x7 : 0000000000ddfd31 x6 : ffff8000feabcf70
[   49.459610] x5 : ffff8000007e9f00 x4 : ffff000010a1cbd8
[   49.460090] x3 : ffff80000034a070 x2 : ffff8000007e9f00
[   49.460569] x1 : 0000000000000000 x0 : ffff800000344800
[   49.461050] Call trace:
[   49.461287]  0x0
[   49.461468]  rtl8211e_config_init+0x40/0xa0 [realtek]
[   49.461927]  phy_init_hw+0x54/0x70
[   49.462243]  phy_attach_direct+0xd4/0x250
[   49.462612]  phy_connect_direct+0x20/0x70
[   49.462978]  phy_connect+0x54/0xa0
[   49.463295]  stmmac_init_phy+0x17c/0x200
[   49.463655]  stmmac_open+0x124/0xac0
[   49.463983]  __dev_open+0xd8/0x158
[   49.464299]  __dev_change_flags+0x164/0x1c8
[   49.464680]  dev_change_flags+0x20/0x60
[   49.465047]  do_setlink+0x288/0xba8
[   49.465366]  __rtnl_newlink+0x5cc/0x6e8
[   49.465720]  rtnl_newlink+0x48/0x70
[   49.466038]  rtnetlink_rcv_msg+0x120/0x368
[   49.466426]  netlink_rcv_skb+0x58/0x118
[   49.466784]  rtnetlink_rcv+0x14/0x20
[   49.467115]  netlink_unicast+0x180/0x1f8
[   49.467479]  netlink_sendmsg+0x190/0x330
[   49.467878]  sock_sendmsg+0x3c/0x58
[   49.468199]  ___sys_sendmsg+0x268/0x2a0
[   49.468554]  __sys_sendmsg+0x68/0xb8
[   49.468884]  __arm64_sys_sendmsg+0x20/0x28
[   49.469266]  el0_svc_common.constprop.0+0x7c/0xe8
[   49.469705]  el0_svc_handler+0x28/0x78
[   49.470052]  el0_svc+0x8/0xc
[   49.470334] Code: bad PC value
[   49.470619] ---[ end trace f330c41329b3e289 ]---

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
