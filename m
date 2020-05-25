Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C657B1E091F
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 10:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=czzt8c5SP+16boy5NKPf+U95vta+VQ3u60afvnPMV/Y=; b=ZDXxMzPXz0d0xW
	90vqxgw0KguVYIyrdNOB3QcVnMY/sC4mSm8Zm9tfsp+TNyYNmwSY2tN/WMOuezsUdYTzNg7ncGOAT
	7GusYcjcNdp9MG/t5EsUoyRiidlCXgo2CZrD8VuQxhIaSPP6DcIGAACAvnk3m2xB9xv6hjauCYPL/
	pmvRYMwS9WS4MBDHgSdCEYMVf/6xO2Wz5HRxQOczaS9nX86b7vRn9uOr1Opfqx06Vm8q+jH0OD8P3
	fjNXgRCFDromBWL+HsTHPs2CwCrUHcCoBStVk/jNS8AlYga4tudpqmvQqfFLqEq2SAPETmACls50z
	8B/luqx9O12hveAB4WPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8gi-0000bK-DJ; Mon, 25 May 2020 08:42:24 +0000
Received: from mail-eopbgr80073.outbound.protection.outlook.com ([40.107.8.73]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8ge-0000aX-U6
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 08:42:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CGGB9Wzi686NBoEVrhW1Rsq3wBLEnDn8nJXi5KCOIoX8b3umj61LzzeIhsFXucVX1wlHwj9J3cUcvzkYalhNJQPYY3O8U5iVyCOgqGaJ0Sqia+h7hzlgUyJCCjVOvZ1cE2UxcbhNl0NgNq/EYmkm2jhio+logzJYVDEHnL8mi+UBzsaShsWtM+ofBL0Ccycre1fcy9+bQpg7knEkz/gMEmzdAKyxI5PjnBIZm+e5bQieqLHpp2e54ej9Qink2rhOBPlnko+eCYcu+Kj6VBGPjfu6zAzzT38upD6T3TE0Yc9FLUIiggZYDYE4rJYWvBBnjads/6vnLVcP5JIHDzb9Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hd6DGMBPbxvtThc4hrQW9OFSiDMkekUVYo6ez7qCfJk=;
 b=i6X5incGT28gcegMAYX12LKyoePcGutgjeko1pBJCMHp8GBBt8s+p2kEwND2FQS9KFvU+CJ4TmNGkMEVS1Ax8TCMkPLyTS4EnT2lzcjNYzOwRXxp5b4JUQsNTDC90YsaUTF4VKhBiIEqaZhXaSKBFz4F3OX4+Pmfs1OiMEJ6nx0Ax4r1jqRslFQvjKqi/4HJvIA6cPdubXATAwZSLVkYoC23+MOizS58V2K4iGYES8QVT6EIICmsGOkFcq/QzSYyv+a60GilJut1Z0zbGw6iyGZytijVtMn/aJ2DGgEivExC5Y6bvClZXrGe1sL0LG1lhXSf10GfC//YzcXS+hvMXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vimar.com; dmarc=pass action=none header.from=vimar.com;
 dkim=pass header.d=vimar.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Vimargroup.onmicrosoft.com; s=selector2-Vimargroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hd6DGMBPbxvtThc4hrQW9OFSiDMkekUVYo6ez7qCfJk=;
 b=JJUFcFicZ9e7C0Es3gSwyrfQj6ZsxsAw3DJ6X6gkKrguGSWGqF3fYfsaxNNwFcLNcCllOB9jbCUck3frH4k2aVAPucTiviSJFewYdsC+5eaMN8SvRBz6MukghThZgfhGhyMiFTfVVHQP1k1WKKpY375veKU8G3bHMWXOn28o/bA=
Received: from DB8PR08MB5036.eurprd08.prod.outlook.com (2603:10a6:10:ed::20)
 by DB8PR08MB4955.eurprd08.prod.outlook.com (2603:10a6:10:38::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Mon, 25 May
 2020 08:42:15 +0000
Received: from DB8PR08MB5036.eurprd08.prod.outlook.com
 ([fe80::8dce:6db4:5358:200e]) by DB8PR08MB5036.eurprd08.prod.outlook.com
 ([fe80::8dce:6db4:5358:200e%3]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 08:42:15 +0000
From: Zanella Francesco <Francesco.Zanella@vimar.com>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: spi-rockchip issue with receive only mode
Thread-Topic: spi-rockchip issue with receive only mode
Thread-Index: AQHWMmvtBYrr2czePEKLfOlIK0a2Jg==
Date: Mon, 25 May 2020 08:42:15 +0000
Message-ID: <DB8PR08MB503622ECEC5FD7F9847B9232E9B30@DB8PR08MB5036.eurprd08.prod.outlook.com>
Accept-Language: it-IT, en-US
Content-Language: it-IT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=vimar.com;
x-originating-ip: [93.62.232.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1df50201-d80b-4d61-5c18-08d8008786e4
x-ms-traffictypediagnostic: DB8PR08MB4955:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR08MB49555F5FB85915202581C42BE9B30@DB8PR08MB4955.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0414DF926F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YIp3VDmPQKQxnz0ljvwOnwwl4o3kgG1gJ0ZaWHm+ep8IffiWzZIRIbMR5z0wSRws1vZH6JsFIcoTaqilI2tfV8MdJLp3iu7OaLR/HfVLNZ5Jx8lHC5Y5HYSOj4emCx314XWl1kG2euwSbrteqigezBPRy6frbbt25QQtHVlxDY7ARrGnaR7MR9mta+jj3CKcF29HT1FgzFDofnnLxai64MArnesU1qvuMA/LmAJp8ZSeKi6+/OF8Q7453HqZSdhF/kpBW6lvahNQp1yJKz+sLr64zO2lPaRAGE+JuUwBu7dqWK9aUjjBZ2DvCcmzOZS6wpWAMBXdxyq37PWJA+5SWzl9fXIipR3gphd6n5p+3Q6BrOw/YVQ63kDpJhjB2hGdbX3+M5vYD3/fzok3oGKrfg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR08MB5036.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39850400004)(366004)(136003)(376002)(346002)(396003)(8676002)(55016002)(66446008)(66946007)(64756008)(76116006)(91956017)(66476007)(66556008)(71200400001)(107886003)(8936002)(5660300002)(52536014)(86362001)(33656002)(4326008)(26005)(6506007)(478600001)(966005)(316002)(2906002)(186003)(9686003)(6916009)(7696005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: fxg7dnyooQT5jDblecCNH1djEbCo7ITlselg+T2GvHvUS1Ah6wYWJKADnvyOuVyo1xxW3/OhmrxaRTfuxXXfQ56a9+WjQKOnOCGnn9H9Kr6Uvv9jOZ35b7LIoe++xzY0UeIyRq4J8Lim4V1+2/SSXheqZ/utWzEZYzetxYExBs+9mbwU9MmdYEY3ivYAHAWVk6Zjqp1/pPmMJs/sZS5sp/R7UvkiYstahhL3AWF4fb6KtgOPbKadUHzyUMN5dR1FOFa3oHAe1iWHCBpY0Gse/sf5F8OdEOcKOMqFgUxJH5XeQiHU7GS/O+MLWxos4OvVdoHgjNhNjrg7uiLXrW4QCVekv0BScdtki/gzVd1RygIlPnrB7UkbSdgucKIfVj892sSYMZLfc4/WXcAnZA89cJL8e2CKWvf3q7+oi96r0qRSIrQPHPqYTZOhDzeP/ULHR2XDB0F0F1WDrHXXxTyaj8e/YqnXJsnUQRO6omePEYI=
MIME-Version: 1.0
X-OriginatorOrg: vimar.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df50201-d80b-4d61-5c18-08d8008786e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2020 08:42:15.4803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a1f008bc-d59b-4c66-8f87-60fd9af15c7f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BbCzwA/U5yX17qqzF983zeXEuzxzcKCbAfSKA+BCCu2P230fGNt/UeJtfBy+zxk7yhH4yAZKmLEcgwvb+6PEQ8Ie1V5JJv8gkcdTxFOhRPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_014221_038590_FBD36329 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Valotto Lorenzo <Lorenzo.Valotto@vimar.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi all,

We found an issue on RK SPI controller driver spi-rockchip.c on kernel 5.4.0 with a PX30 chip.
In our driver which use it, we use this mode

spi->bits_per_word = 8;
spi->mode = SPI_MODE_3;
status = spi_setup(spi);

The issue triggers when we use APIs spi_read() or spi_write_then_read() with tx_buf = NULL
In these situations rockchip_spi_config() sets the SPI controller in receive only mode:

if (xfer->rx_buf && xfer->tx_buf)
cr0 |= CR0_XFM_TR << CR0_XFM_OFFSET;
else if (xfer->rx_buf)
cr0 |= CR0_XFM_RO << CR0_XFM_OFFSET;

and here comes the problem: we see that in this mode the controller receives 1 Byte more than expected (8 more clock cycles on the oscilloscope). The big problem is when rockchip_spi_isr() is triggered, because it finalizes the transfer only when rx_left is 0, but in rockchip_spi_pio_reader() we have:

u32 words = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
u32 rx_left = rs->rx_left - words;

but words is rs->rx_left + 1 for the issue, so we have -1 which is wrapped around, causing a lot of troubles and however not = 0.

We temporary solved the issue adding a check:

u32 words = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
u32 rx_left;
if(words > rs->rx_left) // ADDED CHECK
     words = rs->rx_left;
rx_left = rs->rx_left - words;

Using simultaneus tx and rx it doesn't happen.

Another way to solve our specific problem (not sure if it solves the problem with other configurations) is in rockchip_spi_config (this also removes the extra clock cycles):

case 8:
     cr0 |= CR0_DFS_8BIT << CR0_DFS_OFFSET;
     cr1 = xfer->len - 2;
break;

Instead of

case 8:
     cr0 |= CR0_DFS_8BIT << CR0_DFS_OFFSET;
     cr1 = xfer->len - 1;
break;

But in the documentation, for example
http://rockchip.fr/RK3288%20TRM/rk3288-chapter-42-serial-peripheral-interface-(spi).pdf
it seems correct len - 1:

[quotation]
NDM
Number of Data Frames
When Transfer Mode is receive only, this register field sets the number of data frames to be continuously received by the SPI. The SPI continues to receive serial data until the number of data frames received is equal to this register value plus 1, which enables you to receive up to 64 KB of data in a continuous transfer.

Has anyone experienced this issue?

Please keep us on CC in this thread.

Thanks, best regards,

Francesco Zanella
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
